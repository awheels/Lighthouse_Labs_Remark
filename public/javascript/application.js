$(document).ready(function() {
  $('.editor').notebook();
  console.log("doc loaded")
  
  function convertToArr(set) {
    var results = [];
    set.each(function(index) {
      results.push(set[index].outerHTML);
    });
    return results;
  };

  $(".submit-btn").on( "click", function() {
    console.log("clicked!")
    var input = $('.editor').find('p,h1,h2');
    var paragraphs = convertToArr(input);
    console.log(paragraphs)
    $.post('/docs', {p: paragraphs});
  });
});
