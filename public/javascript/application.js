$(document).ready(function() {
  $('.editor').notebook();

  function convertToArr(set) {
    var results = [];
    set.each(function(index) {
      results.push(set[index].outerHTML);
    });
    return results;
  }
  
  var input = $('.editor').find('p,h1,h2')

  $('.submit-btn').on('click', function() {
    var paragraphs = convertToArr(input);
    $.post('/docs', {p: paragraphs});
  });
});
