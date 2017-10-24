if(!!$('.issuecount').length) {
	docname = $('ol.container').data('doc');
	$.getJSON('https://api.github.com/search/issues?q=is:open+repo:foundeo/cfdocs+' + docname,function(res) {
		$('.issuecount').html(res.total_count);
	});
}
