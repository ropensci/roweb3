$('.copy-cite-link').click(function(e){
  e.preventDefault();
  var txt = $(this).parent().attr('href');
  navigator.clipboard.writeText(txt);
  alert("Copied link to cliboard!")
});
