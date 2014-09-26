$(document).ready(function() {
  $('.editor').notebook();
  console.log("doc loaded")
  
  function convertToArr(set) {
    var results = [];
    set.each(function(index) {
      if ($(set[index]).text().length > 1) {
        results.push(set[index].outerHTML);
      }
    });
    return results;
  };

  $(".submit-btn").on( "click", function() {
    console.log("clicked!")
    var input = $('.editor').find('p,h1,h2');
    input.removeAttr('contenteditable');
    var paragraphs = convertToArr(input);
    documentTitle = $('.title-input').val();
    documentInfo = $('.description-input').val();
    $.post('/docs', {p: paragraphs, d: documentInfo, t: documentTitle}).then(function(id)
    {
      location.href = '/docs/' + id;
    });
  });
});