$(document).ready(function() {
	//GitHub api requests
	if(!!$('.issuecount').length && !!$('#docname').length) {
		$.getJSON('https://api.github.com/search/issues?q=is:open+is:issue+repo:foundeo/cfdocs+' + $('#docname').text(),function(res) {
			$('.issuecount').html(res.total_count);
		});
	}

	// Recent Items
	//store last 10 visited pages in a dropdown for easy access
	recentplaces = localStorage.getItem('recentplaces') || '[]';
	recentplaces = JSON.parse(recentplaces);
	pagetitle = $('#docname').text() || $('h1').text();
	pagepath = location.pathname;
	recentplaces = recentplaces.reduce(function(acc,x,i,a) {
		if(acc.length < 10 && x.path != pagepath) acc.push(x);
		return acc;
	},[]);

	recentplaces.unshift({'title': pagetitle, 'path': pagepath });
	localStorage.setItem('recentplaces',JSON.stringify(recentplaces));
	var cList = $('ul#recentitems')
	$.each(recentplaces, function(i)
	{
		var li = $('<li/>')
			.appendTo(cList);
		var aaa = $('<a/>')
			.attr('href',recentplaces[i].path)
			.text(recentplaces[i].title)
			.appendTo(li);
	});

	// Search
	var tags_fns = new Bloodhound({
	    datumTokenizer: function(d) {
		var test = Bloodhound.tokenizers.whitespace(d);
		$.each(test,function(k,v){
			var i = 0;
			while( (i+1) < v.length ){
			  test.push(v.substr(i,v.length));
			  i++;
			}
		})
		return test;
	    },
	    queryTokenizer: Bloodhound.tokenizers.whitespace,
	    prefetch: {
		  url:'data/en/index.json',
		  ttl: 86400000*7,
		  cache: true,
		  transform: function(d){return d.tags.concat(d.functions, d.categories, d.guides, d.components);}
		}
	  });
	  $('#lookup-box').typeahead({
		hint: true,
		highlight: true,
		minLength: 1
	  },{
		name: 'tags-fns',
		source: tags_fns,
		limit: 10
	  });
	  $('.tt-hint').addClass('form-control');
	  $('#search').submit(submitSearch);
	  $('#lookup-box').on('typeahead:selected', submitSearch);
	  $('#lookup-box').focus();

	  $('.example-btn').click(function() {
	      var name = $(this).attr('data-name');
	      var index = $(this).attr('data-index');
	      $('#example-modal-content').html('<iframe width="100%" height="450" border="0" src="/try/' + name + '/' + index + '">');
	      $('.example-modal').modal();      
	  });
	  if(!$("pre").hasClass('prettyprint')) $("pre").addClass('prettyprint');
	  if ($('.prettyprint').length != 0 && typeof(prettyPrint) == "function") {
	      prettyPrint();
	  }

	  //   if (window.innerWidth > 780) {
	//     $( window ).scroll(function(e) {
	// 	var top  = window.pageYOffset || document.documentElement.scrollTop;
	// 	//show/hide
	// 	$('#foundeo')[(top > 100) ? 'addClass' : 'removeClass']('foundeoAppear');
	//     });
	//   }

	  
	  //Generate JSON needed for adding an example to a doc
	$('#example-form-title').keyup(updateGenExample);
	$('#example-form-description').keyup(updateGenExample);
	$('#example-form-code').keyup(updateGenExample);
	$('#example-form-result').keyup(updateGenExample);
	$('#example-form-runnable').change(updateGenExample);
	function updateGenExample() {
		var title = $('#example-form-title').val();
		var description = $('#example-form-description').val();
		var code = $('#example-form-code').val();
		var result = $('#example-form-result').val();
		var runnable = $('#example-form-runnable').val();
		
		var outputString = {
			"title":title,
			"description":description,
			"code":code,
			"result":result,
			"runnable":(runnable == 1)
		};
		$('#example-form-output').val(JSON.stringify(outputString, null, "\t"));
	}

});
//copy to clipboard
function fallbackCopyTextToClipboard(text) {
	var textArea = document.createElement("textarea");
	textArea.value = text;
	
	// Avoid scrolling to bottom
	textArea.style.top = "0";
	textArea.style.left = "0";
	textArea.style.position = "fixed";
  
	document.body.appendChild(textArea);
	textArea.focus();
	textArea.select();
  
	try {
	  var successful = document.execCommand('copy');
	  var msg = successful ? 'successful' : 'unsuccessful';
	  console.log('Fallback: Copying text command was ' + msg);
	} catch (err) {
	  console.error('Fallback: Oops, unable to copy', err);
	}
  
	document.body.removeChild(textArea);
  }

  function copyTextToClipboard(eleID) {
	  var text = document.getElementById(eleID).innerText;
	if (!navigator.clipboard) {
	  fallbackCopyTextToClipboard(text);
	  return;
	}
	navigator.clipboard.writeText(text).then(function() {
	  console.log('Async: Copying to clipboard was successful!');
	}, function(err) {
	  console.error('Async: Could not copy text: ', err);
	});
  }

//search submit
function submitSearch(e) {
	e.preventDefault();
	var newLocation = $('#lookup-box').val().toLowerCase();
	document.location = '/' + encodeURIComponent((newLocation.length && newLocation[0] == '/') ? newLocation.slice(1) : newLocation);
}
//google analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-82573-18']);
_gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
