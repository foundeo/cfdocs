/*
	Copyright (c) 2013, Abram Adams

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
*/
'use strict';

angular.module('code.editor', [])
.directive('codeEditor',function($timeout){
	var uid = +new Date().getTime() +'-'+guid();
	var editorTemplate =
	'<div id="{{id}}-editor" class="editor-wrapper"><h2 ng-hide="!title">{{title}}</h2>'+
	'<input type="hidden" name="{{fieldname}}" id="{{fieldname}}" value="{{code}}"/>'+
	'<div class="editor-container"><div>'+
	'	<div class="split-pane-frame">'+
	'		<div class="split-pane vertical-percent">'+
	'		    <div class="split-pane-component" id="left-component">'+
	'		        <div class="decoration">'+
	'				<form id="form-{{id}}" target="results-{{id}}" method="post" enctype="multipart/form-data" class="code-form">'+
	'					<input type="hidden" name="setupcode" id="setupcode" value="{{setupCode}}"/>'+
	'					<input type="hidden" name="code" id="code" value="{{code}}"/>'+
	'					<input type="hidden" name="postcode" id="postcode" value="{{postcode}}"/>'+
	'					<input type="hidden" name="key" id="key" value="{{id}}'+ uid +'"/>'+
	'					<input type="hidden" name="asserts" id="asserts" value="{{asserts}}"/>'+
	'			        </form>'+
	'				<div class="code-editor"></div>'+
	'		        </div>'+
	'		    </div>'+
	'		    <div class="split-pane-divider my-divider"></div>'+
	'		    <div class="split-pane-component" id="right-component">'+
	'		        <div class="decoration">'+
	'		            <div class="results-wrapper">'+
	'		                <div class="results-div results"></div>'+
	'		                <div class="results-annotations"></div>'+
	'		                <span class="results-label">Results</span>'+
	'		            </div>'+
	'		        </div>'+
	'		    </div>'+
	'		</div>'+
	'	</div>'+
	'	</div>'+
	'	<div class="editor-toolbar">'+
	'	    	<button class="submit-code btn {{runBtnClass || \'btn-primary\'}} pull-left">Run Code <i class="icon-play icon-white"></i></button>'+
	'		<span class="code-editor-help text-muted" style="font-size:small;">&nbsp;Ctl+Enter to Run, Ctl+S to save Gist.</span>'+
	'		<span class="code-editor-message"></span>'+
	'	    	<button class="toggle-fullscreen btn {{fullscreenbtnclass}} pull-right" ng-click="toggleFullscreen()"> <i class="icon-resize-full"></i></button>'+
	'	    	<button class="editor-options btn btn-default {{optionsbtnclass}} pull-right"> <i class="icon-gear"></i></button>'+
	'		<span ng-hide="showResults == false || showResults == 0" class="alert alert-info pull-right" style="padding: 5px;margin: 0px 3px 0px 3px;display: inline-block;">Current Engine: <span class="display-engine"></span></span>'+
	'		<div class="modal fade" style="display:none;" tabindex="-1" role="dialog">'+
	'		  <div class="modal-dialog">'+
	'		    <div class="modal-content">'+
	'		      <div class="modal-header page-header">'+
	'		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'+
	'		        <h4 class="modal-title">Editor Preferences</h4>'+
	'		      </div>'+
	'		      <div class="modal-body">'+
	'		        <label class="control-label">Change Editor Theme</label>'+
	'		        <div>'+
	'		         <select id="theme" class="form-control">'+
	'		           <optgroup label="Bright">'+
	'		             <option value="chrome">Chrome</option>'+
	'		             <option value="clouds">Clouds</option>'+
	'		             <option value="crimson_editor">Crimson Editor</option>'+
	'		             <option value="dawn">Dawn</option>'+
	'		             <option value="dreamweaver">Dreamweaver</option>'+
	'		             <option value="eclipse">Eclipse</option>'+
	'		             <option value="github">GitHub</option>'+
	'		             <option value="solarized_light">Solarized Light</option>'+
	'		             <option value="textmate" selected="selected">TextMate</option>'+
	'		             <option value="tomorrow">Tomorrow</option>'+
	'		             <option value="xcode">XCode</option>'+
	'		           </optgroup>'+
	'		           <optgroup label="Dark">'+
	'		             <option value="ambiance">Ambiance</option>'+
	'		             <option value="chaos">Chaos</option>'+
	'		             <option value="clouds_midnight">Clouds Midnight</option>'+
	'		             <option value="cobalt">Cobalt</option>'+
	'		             <option value="idle_fingers">idleFingers</option>'+
	'		             <option value="kr_theme">krTheme</option>'+
	'		             <option value="merbivore">Merbivore</option>'+
	'		             <option value="merbivore_soft">Merbivore Soft</option>'+
	'		             <option value="mono_industrial">Mono Industrial</option>'+
	'		             <option value="monokai">Monokai</option>'+
	'		             <option value="pastel_on_dark">Pastel on dark</option>'+
	'		             <option value="solarized_dark">Solarized Dark</option>'+
	'		             <option value="terminal">Terminal</option>'+
	'		             <option value="tomorrow_night">Tomorrow Night</option>'+
	'		             <option value="tomorrow_night_blue">Tomorrow Night Blue</option>'+
	'		             <option value="tomorrow_night_bright">Tomorrow Night Bright</option>'+
	'		             <option value="tomorrow_night_eighties">Tomorrow Night 80s</option>'+
	'		             <option value="twilight">Twilight</option>'+
	'		             <option value="vibrant_ink">Vibrant Ink</option>'+
	'		           </optgroup>'+
	'		         </select>'+
	'		        </div>'+
	'			<label class="control-label">Change CFML Engine</label>'+
	'		        <div>'+
	'		         <select id="engine" class="form-control">'+
	'		             	<option value="lucee5">Lucee 5.LATEST</option>'+
	'		             	<option value="lucee">Lucee 4.5.LATEST</option>'+
	'		             	<option value="railo">Railo 4.2</option>'+
	'						<option value="acf2021">Adobe ColdFusion 2021</option>'+
	'						<option value="acf2018">Adobe ColdFusion 2018</option>'+
	'						<option value="acf2016">Adobe ColdFusion 2016</option>'+
	'						<option value="acf11">Adobe ColdFusion 11</option>'+
	'		             	<option value="acf">Adobe ColdFusion 10</option>'+
	'		         </select>'+
	'		        </div>'+
	'		      </div>'+
	'		      <div class="modal-footer">'+
	'		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
	'		      </div>'+
	'		    </div>'+
	'		  </div>'+
	'		</div>'+
	'	</div>'+
	'</div>'+
	'</div>';

	return {
		restrict: 'AE',
		scope: {
			id: '@id',
			fieldname: '@fieldname',
			url: '@url',
			engine: '@engine',
			mode : '@mode',
			theme: '@theme',
			title: '@title',
			width: '@width',
			height: '@height',
			fullscreen: '@fullscreen',
			runBtnClass: '@runbtnclass',
			fullscreenBtnClass: '@fullscreenbtnclass',
			showOptions: '@showOptions',
			showError: '@showError',
			asserts: '@asserts',
			code: '@code',
			codeGist: '@codeGist',
			setupCode: '@setupCode',
			setupCodeGist: '@setupCodeGist',
			postcode: '@postcode',
			showResults: '@showResults',
			basepath: '@basepath'
		},
		template: editorTemplate,
		// compile: function( tElement, tAttrs, transclude ){

		// 	// We're working in the compile phase so we can manually transclude the content
		// 	// into the template before the template is rendered.  Otherwise the content would
		// 	// have to be sent in as an attribute.
		// 	var elementText  = tElement.text();
		// 	tAttrs.code = elementText || tAttrs.code;

		// 	// Inject the rendered template HTML into the template element (tElement)
		// 	tElement.html(editorTemplate);

		// 	// The return of a compile function is a link function (containing the compiled "scope") which Angular will fire
		// 	// LINK:
		// 	return function( scope, element, attrs ){
		link: function( scope, element, attrs ){
				scope.code = attrs.code;
				scope.codeGist = attrs.codeGist;
				scope.setupCode = attrs.setupCode;
				scope.setupCodeGist = attrs.setupCodeGist;
				scope.asserts = attrs.asserts;
				scope.fullscreen = attrs.fullscreen;
				scope.engines = {'acf2021':'Adobe ColdFusion 2021','acf2018':'Adobe ColdFusion 2018','acf2016':'Adobe ColdFusion 2016','acf11':'Adobe ColdFusion 11', 'acf':'Adobe ColdFusion 10', 'railo':'Railo 4.2', 'lucee':'Lucee 4.5', 'lucee5':'Lucee 5', 'lucee5.0.0.45':'Lucee 5.0.0.45'};
				scope.engine = attrs.engine || 'lucee';
				scope.basepath = attrs.basepath || '/gist/';

				// Setup dom pointers.
				var editor = element.find('.code-editor'),
					codeForm = element.find('.code-form'),
					setupCode = element.find('#setupcode'),
					results = element.find('.results'),
					resultsDiv = element.find('.results-div'),
					resultsWrapper = element.find('.results-wrapper'),
					resultsFrame = angular.element('<iframe name="results-'+ attrs.id +'" id="results-'+ attrs.id +'" class="results-frame" style="display:none;border:none;" width="100%" height="100%"></iframe>').prependTo(resultsWrapper),
					editorWrapper = element.find('.editor-wrapper'),
					resultsLabel = element.find('.results-label'),
					resultsAnnotations = element.find('.results-annotations'),
					splitPane = element.find('.split-pane'),
					submitCode = element.find('.submit-code'),
					message = element.find('.code-editor-message'),
					displayEngineSpan = element.find('.display-engine'),
					toggleFullscreenBtn = element.find('.toggle-fullscreen'),
					basepath = scope.basepath;

				// Initialize editor and set various default options
				var aceEditor = window.ace.edit(editor[0]),
					session = aceEditor.getSession(),
					mode = attrs.mode || "coldfusion",
					theme = attrs.theme || "monokai",
					showError = typeof attrs.showerror !== 'undefined' ? attrs.showerror === "true" || attrs.showerror === "1" : true,
					asserts = attrs.asserts || "",
					showOptions = typeof attrs.showOptions !== 'undefined' ? attrs.showOptions === "true" || attrs.showOptions === "1" : true,
					showResults = typeof attrs.showResults !== 'undefined' ? attrs.showResults === "true" || attrs.showResults === "1" : true,
                    urlPool = {
                    	"railo" : [ "https://railo-sbx.trycf.com/getremote.cfm" ],
				    	"lucee" : [ "https://lucee4-sbx.trycf.com/lucee4/getremote.cfm" ],
				    	"lucee5" : [ "https://lucee5-sbx.trycf.com/lucee5/getremote.cfm" ],
				    	"lucee5.0.0.45" : [ "https://lucee5-sbx.trycf.com/lucee5/getremote.cfm" ],
		                "acf" : [ "https://acf10-sbx.trycf.com/cfusion/getremote.cfm" ],
						"acf11" : [ "https://acf11-sbx.trycf.com/cfusion/getremote.cfm" ],
						"acf2016" : [ "https://acf12-sbx.trycf.com/getremote.cfm" ],
						"acf2018" : [ "https://acf13-sbx.trycf.com/getremote.cfm" ],
						"acf2021" : [ "https://acf14-sbx.trycf.com/getremote.cfm" ]
                    },
                    url = attrs.url || urlPool[scope.engine][Math.floor(Math.random()*urlPool[scope.engine].length)];

				displayEngine();
				theme = theme.toLowerCase();
				element.find('#theme').val(theme);
				aceEditor.setTheme("ace/theme/" + theme);
				session.setMode("ace/mode/"+ mode);
				session.setUseWrapMode(true);

				//Include auto complete- Only for Template Editor page
			    ace.config.loadModule('ace/ext/language_tools', function () {
			        aceEditor.setOptions({
			            enableBasicAutocompletion: true,
			            enableSnippets: true
			        })

			        var snippetManager = ace.require("ace/snippets").snippetManager;
			        var config = ace.require("ace/config");

			      	ace.config.loadModule("ace/snippets/coldfusion", function(m) {
				        if (m) {
				          snippetManager.files.coldfusion = m;
				          m.snippets = snippetManager.parseSnippetFile(m.snippetText);
				          snippetManager.register(m.snippets, m.scope);
				        }
				});
			    });

			    // Custom ACE editor key bindings
				// Run
				aceEditor.commands.addCommand({
				    name: "Run",
				    bindKey: {win: "Ctrl-Enter", mac: "Command-Enter"},
				    exec: function(editor) {
				    	if( submitCode )
				    	submitCode.trigger('click');
				    }
				});
				// Save Gist
				aceEditor.commands.addCommand({
				    name: "Save",
				    bindKey: {win: "Ctrl-s", mac: "Command-s"},
				    exec: function(editor) {
				    	saveGist();
				    }
				});


			    /* Enable Auto-complete */
				var langTools = ace.require("ace/ext/language_tools");

				element.find('#engine').val(scope.engine);


				scope.$watch('code', function(){
					session.setValue(scope.code);
				});
				// Load Gist if id was supplied
				if( scope.codeGist && scope.codeGist.length > 0){
					loadGist( scope.codeGist ).then( function(data){
						var codeGist = "";
						for( var file in data.files ){
							codeGist+=data.files[file].content;
						}
						scope.code = codeGist;
						session.setValue(scope.code);
					} );
				}
				if( scope.setupCodeGist && scope.setupCodeGist.length > 0 ){
					loadGist( scope.setupCodeGist ).then( function(data){
						var setupCodeGist = "";
						for( var file in data.files ){
							setupCodeGist+=data.files[file].content;
						}
						setupCode.val(setupCodeGist);
					} );
				}

				// Set the editor's initial value
				session.setValue(scope.code);
				aceEditor.on('change',function(e){
					// When the scope changes, we need to update the form field and the
					// ace editor manually because the bidirectional binding doesn't
					// play well with unsafe HTML

					scope.code = session.getValue();
					$('#code',codeForm).val(scope.code);

					$('#'+attrs.fieldname).val(scope.code);
				});

				// Enable split pane
				splitPane.splitPane();

				// Listen for resize of editor pane and initiate a resize on the editor
				splitPane.on('resize',function(){
					aceEditor.resize(true);
				});

				// Set the editor width/height based on the passed in arguments
				editorWrapper.css('height',attrs.height);
				editorWrapper.css('width',attrs.width);

				scope.$watch('showOptions', function(){
					if( showOptions == 1 || showOptions == true ){
						element.find('.editor-options').show();
					}else{
						element.find('.editor-options').hide();
					}
				});
				// Hide results pane if specified
				scope.$watch('showResults', function(){
					if( showResults == 1 || showResults == true ){
						element.find('#right-component').show();
						element.find('.split-pane-divider').show();
						element.find('.code-editor-help').show();
					}else{
						element.find('.submit-code').hide();
						element.find('#right-component').hide();
						element.find('.split-pane-divider').hide();
						element.find('#left-component').css('width','100%');
						element.find('.code-editor-help').hide();
					}
					aceEditor.resize(true);
				});

				// Resize the editor to fit the new dimensions.
				aceEditor.resize(true);
				scope.toggleFullscreen = toggleFullscreen;
				editor.show();

				// Force fullscreen if fullscreen attribute was passed in and true.
				if( attrs.fullscreen !== undefined && attrs.fullscreen ==	 "true"){
					toggleFullscreen();
				}

				// Setup event listeners for the various actions in the editor.
				// listener for the submit.  This submits the code to the remote server via iframe.
				submitCode.on('click',function(e){
					e.preventDefault();

					resultsFrame.attr('id','results-' + attrs.id);
					resultsFrame.attr('name','results-' + attrs.id);

					codeForm.attr( 'action', url );
					codeForm.attr( 'target', resultsFrame.attr('name') );

					var editorVal = aceEditor.getValue();
					session.clearAnnotations();
					$('#code',codeForm).val(editorVal);
					resultsFrame.hide();
					resultsDiv.html('<div class="loading-title"><h1><i class="icon-rocket"></i> Working on it, <br>just a sec please...</h1></div>').fadeIn('fast');
					resultsFrame.on( 'load', frameOnLoad );
					codeForm.submit();

					element.find('.results-div div h1').fadeTo( 2500, 0.2 );
				});

				resultsWrapper.on('mouseover',function(){
					resultsLabel.css('opacity',0).hide();
				});
				resultsWrapper.on('mouseout',function(){
					resultsLabel.fadeTo('fast',0.3);
				});
				//toggleFullscreenBtn.on('click',toggleFullscreen);

				element.find('.editor-options').on('click',function(e){
					e.preventDefault();
					var optionModal = element.find('.modal');
					optionModal.modal('show');
				});

				element.find('#theme').on('change',function(e){
					aceEditor.setTheme("ace/theme/" + $(this).val());
				});

				element.find('#engine').on('change',function(e){
					scope.engine = $(this).val();
					displayEngine();
					url = urlPool[scope.engine][Math.floor(Math.random()*urlPool[scope.engine].length)];
				});

				function displayEngine(){
					displayEngineSpan.html( scope.engines[scope.engine] );
				}
				function saveGist(){
					// if( scope.codeGist !== '' ){
					// 	forkGist( scope.codeGist );
					// 	return;
					// }
					var data = {
				        "description": "TryCF Gist",
				        "public": true,
				        "files": {
				          "trycf-gist.cfm": {
				              "content": aceEditor.getValue()
				          }
				        }
				      };
				      $.ajax({
				        url: 'https://api.github.com/gists',
				        type: 'POST',
				        dataType: 'json',
				        data: JSON.stringify(data)
				      })
				      .success( function( response ) {
				      	var gistId = response.id;
				      	var url = basepath + gistId +'/'+scope.engine;
				      	if( scope.setupCodeGist !== undefined && scope.setupCodeGist.length > 0 ){
				      		url+= '?setupCodeGistId='+ scope.setupCodeGist;
				      	}
				      	if(scope.theme !== undefined && scope.theme.length > 0 ){
							url+= (url.indexOf('?') > 0 ? '&' : '?') + 'theme='+ scope.theme;
				      	}
				        message.html('<span class="alert alert-success" style="padding: 5px;margin: 5px 0 0 3px;display: inline-block;"><i class="icon-check icon-white"></i> Saved Gist: <a href="http://trycf.com'+ url + '">'+response.id+'</a></span>');
				      })
				      .error( function(e) {
				        console.warn("gist save error", e);
				        message.html('<span class="alert alert-danger" style="padding: 5px;margin: 5px 0 0 3px;display: inline-block;"><i class="icon-warning-sign icon-white"></i> Couldn\'t save Gist: '+e.detail+'</span>');
				      });
				}
				// requires oauth to post on user's behalf
				// function forkGist( gistId ){
				//       $.ajax({
				//         url: 'https://api.github.com/gists/'+gistId+'/forks',
				//         type: 'POST'
				//       })
				//       .success( function( response ) {
				//         message.html('<span class="alert alert-inverted" style="padding: 5px;margin: 5px 0 0 3px;display: inline-block;"><i class="icon-check icon-white"></i> Forked Gist: <a href="http://trycf.com/gist/'+ response.id +'/'+scope.engine+'">'+response.id+'</a></span>');
				//       })
				//       .error( function(e) {
				//         console.warn("gist save error", e);
				//         message.html('<span class="alert alert-danger" style="padding: 5px;margin: 5px 0 0 3px;display: inline-block;"><i class="icon-warning-sign icon-white"></i> Couldn\'t save Gist: '+e.detail+'</span>');
				//       });
				// }
				function loadGist( gistId ){
					return $.ajax({
						url: 'https://api.github.com/gists/'+gistId,
						type: 'GET',
						dataType: 'json'
				      	})
				      	.success( function( response ) {
				        	return response.files.content;
				      	})
				      	.error( function(e) {
				        	console.warn("gist save error", e);
				      	});
				}
				// This fires when the results pane is updated with the response
				// back from the server.
				function frameOnLoad(e){
					// remove load listener so the frame load only fires once after
					// submitting code ( prevents problems if content redirects )

					resultsFrame.off('load');

					var xhr = $.ajax({
						type : "GET",
						url  : url + "?callback=?",
						data : {'key':attrs.id+uid},
						timeout: 5000,
						dataType :"jsonp"})
							.always( renderResults )
							.fail( function ( httpReq, status, exception ){

							if( status == "timeout"){
								// timeout indicates the jsonp request failed with a 500 series server error.
								// jQuery doesn't handle those errors on a jsonp call.
								renderResults( {"pattern":"","state":"execution","message":"There was an error parsing your code.  This usually indicates a missing ; or another compile time syntax error.  Check your syntax and try again.","html":"There was an error parsing your code.","documentation":"","error":"There was an error parsing your code.  This usually indicates a missing ; or another compile time syntax error.  Check your syntax and try again.","line":0,"column":0} );
								return;
							}
							//var html = '<div class="alert alert-info"><strong><i class="icon-warning-sign"></i> Oh snap</strong><br><p>'+ exception + '</p>';
							var html = '<div class="alert alert-info"><strong><i class="icon-time"></i> Oh snap</strong><br><p>Looks like someone is hogging all the resources.  Click run again and we\'ll try another server.</p>';
							url = urlPool[scope.engine][Math.floor(Math.random()*urlPool[scope.engine].length)];
							resultsFrame.hide();
							resultsDiv.html(html).show();
					});

					function renderResults(data){
						if( data.error !== undefined || ( asserts && asserts.length < 0 && data.hasfailedtest !== "false" ) ){
						  try{

							var html = '',
								htmlFull = '';

							if( typeof data !== 'object' ) {
								data = $.parseJSON( data );
							}

							if( data.line !== undefined && data.line == 0 ){
								// forced error due to blacklist
								if( data.state == "blacklist" ){
									html = '<div class="alert alert-warning">'+
											data.html +
											'</div>';
								// runtime error occurred when running user's code
								}else{
								  	html = '<div class="alert alert-danger"><strong><i class="icon-bug"></i> Error:</strong><br/>'+
											data.error +
											'</div>';
								}
							}else{

								html = '<div class="alert alert-danger"><strong><i class="icon-bug"></i> Error:</strong><br/>'+
										data.error + ' on line ' + data.line +
									   '</div>';

								// This creates a marker in the gutter of the editor to indicate where the error is.
								session.setAnnotations([{
									row: data.line-1,
									column: data.column,
									text: data.error || data.message,
									type: "error" // also warning and information
								}]);

								aceEditor.gotoLine(data.line);
								// use the angular timeout method to delay the call to
								// make the popover, this makes sure the editor has identified
								// and selected the line marked as an error.
								$timeout(function(){
									makePopover(editor);
								}, 100);
							}

							htmlFull = html;

							if (data.pattern && data.pattern != ''){
								htmlFull += '<div class="alert alert-info"><strong><i class="icon-code"></i> Expected Pattern:</strong><br><pre><code>'+ decodeURIComponent(data.pattern) + '</code></pre>';
							}
							if(data.documentation && data.documentation != ''){
								htmlFull += '<strong><i class="icon-book"></i> Documentation:</strong><pre>' + decodeURIComponent(data.documentation) + '</pre></div>';
							}

							resultsAnnotations.html(html);
							resultsDiv.html(htmlFull).show();
							resultsFrame.hide();
						  } catch( e ) {
							resultsDiv.hide();
							resultsFrame.show();
						  }

						}else{

							if( asserts.length  == 0 || !data.hasfailedtest ){
								resultsDiv.hide();
								resultsFrame.show();
							}else{
								if( typeof data !== 'object' ) {
									data = $.parseJSON( data );
								}
								var html = data.html || '';


								/* Did we get test results, and were there any fails? */
								if( data.tests && data.tests.length > 0 ){
									var testFailed = 0;
									var resultList = $('<ul class="list-group"></ul>');
									var results = {};
									var filter = [];
									for( var test in data.tests ){
										results = data.tests[test].results;
										if( results.status === "fail"){
											testFailed++;
											if( filter.indexOf( results.message )  == -1 ){
												resultList.append('<li class="list-group-item '+ (results.status === "fail" ? 'alert-danger' : 'alert-success') +'">'+ results.message +'</li>');
											}
											filter.push(results.message);
										}
									}
									if( testFailed > 0){
										resultList.prepend('<li class="list-group-item alert-danger"><i class="icon-bug"></i> Hmm... Something\'s not quite right...</li>');
										resultsDiv.html(resultList.html()).show();
										resultsFrame.hide();
										return;
									}
								}
								if( data.status === "success" ){
									resultsDiv.hide();
									resultsFrame.show();
								}else{
									resultsDiv.html(html).show();
									resultsFrame.hide();
								}
							}
						}
					}

					return;

				}

				/* UTILITY FUNCTIONS */
				function toggleFullscreen(){
					element.find( '.editor-container' ).toggleClass( 'fullscreen' );
					element.find( '.toggle-fullscreen i' ).toggleClass( 'icon-resize-full' ).toggleClass( 'icon-resize-small' );

					if( element.find( '.editor-container' ).hasClass( 'fullscreen' ) ){
						$( document ).on( 'keyup', scope.handleEscape );
					}else{
						$( document ).off( 'keyup', scope.handleEscape );
					}
					aceEditor.resize(true);
				}
				scope.handleEscape = function( e ){
					// register listener to restore editor size when escape is pressed
					if ( e.keyCode == 27 ) { // esc
						scope.toggleFullscreen();
					}
				}

				function makePopover(editor){
				  var errorPos = $('.ace_error', '#'+ attrs.id + '-editor' ).position(),
					  errorTop = errorPos.top+10,
					  errorLeft = errorPos.left+250,
					  popover = $('.popover').length ? $('.popover') : $('<div data-animation="true" class="popover" style="display:none;"></div>').prependTo($('.ace_error', '#'+ attrs.id + '-editor' ));

					popover.css({
						'top': errorTop+'px',
						left: errorLeft + 'px',
						'position':'absolute',
						'display':'block',
						'z-index':9999
					});
					popover.popover({
						title:"<i class='icon-warning-sign'></i> Oops...",
						content:$('.results-annotations').html(),
						trigger:'manual',
						html:true,
						placement:'bottom',
						container:'body'
					});

					$('.results-annotations').html('');

					popover.popover('show');
					$('.popover-title').css({'background':'#F7AAAA', 'color' : 'maroon', 'font-weight' : 'bold'});
					$('html').on('click.popover.data-api',function() {
						popover.popover('hide');
						popover.popover('destroy');
						popover.remove();
					});
				}
			}
		// }
	}
});

/*** UNIQUE ID GENERATOR ***/
function s4() {
  return Math.floor((1 + Math.random()) * 0x10000)
			 .toString(16)
			 .substring(1);
};

function guid() {
  return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
		 s4() + '-' + s4() + s4() + s4();
}
