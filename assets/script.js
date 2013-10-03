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
//google analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-82573-18']);
_gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();