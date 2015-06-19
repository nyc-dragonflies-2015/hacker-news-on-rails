$(document).ready(function() {
  $("#vote").on('click', function(event) {
    event.preventDefault()
    $.ajax("http://localhost:3000/")
      .done(function() {
        console.log("yay")
      })
      .fail(function() {
        console.log("fail")
      });
  });
});
