$('.copy-cite-link').click(function(e){
  e.preventDefault();
  alert("Copying link to cliboard!");
  var txt = $(this).parent().focus().attr('href');
  navigator.clipboard.writeText(txt);
});
