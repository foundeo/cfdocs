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
  $('#search').submit(submitSearch);
  $('#lookup-box').on('typeahead:selected', submitSearch);
  $('#lookup-box').focus();

  $('.example-btn').click(function() {
      var name = $(this).attr('data-name');
      var index = $(this).attr('data-index');
      $('#example-modal-content').html('<iframe width="100%" height="450" border="0" src="/trycf.cfm?name=' + name + '&index=' + index + '">');
      $('.example-modal').modal();
  });

});
//search submit
function submitSearch() {
  document.location = '/' + $('#lookup-box').val().toLowerCase();
  return false;
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
