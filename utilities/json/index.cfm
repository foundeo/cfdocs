<!doctype html>
<html>
	<head>
		<title>JSON Utils For CFDocs</title>
		<link href="//netdna.bootstrapcdn.com/bootswatch/3.4.1/flatly/bootstrap.min.css" rel="stylesheet">
		<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
	</head>
	<body>
	<div class="container">
		<h1>JSON Utils for CFDocs</h1>
		<hr>
		<h2>String to json</h2>
		<form action="json.cfm" method="post" class="form">
			<input type="hidden" name="action" value="string2json">
			<textarea name="string" class="form-control"></textarea>
			<br>
			<input type="submit" value="To JSON" class="btn btn-primary">
		</form>

		<h2>Example JSON</h2>
		<form action="json.cfm" method="post" class="form">
			<input type="hidden" name="action" value="example">

			<input type="text" name="title" class="form-control" value="" placeholder="Title">
			<br> 
			<input type="text" name="description" class="form-control" value="" placeholder="Description">
			<br> 

			<textarea name="code" placeholder="Code" class="form-control" rows="8"></textarea>
			<br>

			<input type="text" name="result" class="form-control" value="" placeholder="Expected Result or Output of the Code Example">
			<br> 

			<select name="runnable" class="form-control">
				<option value="0">No - Do not show Run Code Button</option>
				<option value="1" selected="selected">Yes - Show Run Code Button</option>
			</select>
			<br>
			<input type="submit" value="To JSON" class="btn btn-primary">
		</form>

		<br>
		<h3>Code Example Tips</h3>

		<p>We like one liner code examples, they can be tested using the unit tests if a result is given. Just omit `cfset` and semicolons, for example:</p>
		<pre>left("Peter", 4)</pre>
		<p>If you specify the <code>result</code> of the example, for example in this case <code>Pete</code> and it is a one liner like above your example will be tested automatically by the Travis CI build (you can also run the test locally <code>/tests/run.cfm</code>.</p>
		<p>When you click the <em>Run Code</em> button, the above code example will be converted to the follow so it can run and show the output in TryCF:</p>
		<pre>&lt;cfoutput&gt;#left("Peter", 4)#&lt;/cfoutput&gt;</pre>
		<p>If a code example has semicolons it is assumed to be script and would be wrapped in a cfscript tag when the <em>Run Code</em> button is clicked.</p>


	</div>

	</body>
</html>