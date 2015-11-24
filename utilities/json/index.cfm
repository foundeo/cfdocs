<!doctype html>
<html>
	<head>
		<title>JSON Utils For CFDocs</title>
		<link href="//netdna.bootstrapcdn.com/bootswatch/3.3.5/flatly/bootstrap.min.css" rel="stylesheet">
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
	</div>

	</body>
</html>