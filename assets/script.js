$(document).ready(function() {
  $('#lookup-box').typeahead({
  		name: 'tags-fns',
  		prefetch: {
  			url:'data/en/index.json',
  			ttl: 86400000*7,
  			filter: function(d){return d.tags.concat(d.functions, d.categories);}
  		}
  });
  $('.tt-hint').addClass('form-control');
  $('#search').submit(function() {
  	document.location = '/' + $('#lookup-box').val().toLowerCase();
  	return false;
  });
});