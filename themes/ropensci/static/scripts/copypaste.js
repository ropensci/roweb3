$(function(){
  var link = $('.copy-cite-link');
  var tooltip_text = 'Copy DOI to clipboard';
  $('.copy-cite-link').click(function(e){
    var txt = link.parent().attr('href');
    navigator.clipboard.writeText(txt).then(function(e){
      link.attr('data-original-title', 'Copied!').tooltip('show');
      link.attr('data-original-title', tooltip_text);
    });
    return false;
  });
  link.tooltip({title: tooltip_text});
});
