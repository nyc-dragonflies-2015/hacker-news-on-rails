$(document).ready(function() {
  $("#vote").on('click', function(event) {
    event.preventDefault();
    console.log(this);
    $.ajax({
      url: this.href,
      method: 'post'
      })
      .done(function() {
        console.log("hi")
      })
      .fail(function() {
        console.log("fail")
      });
  });
});


// $(function() {
//   $('#.vote-me').on('click', function(e) {
//     e.preventDefault();
//     myId = this.data('id'));
//     $.ajax({
//       url: '/posts/' + myId + '/post_votes',
//       method: 'post',
//       dataType: 'json',
//       data: {id: myId}
//     })
//     .done(function(data) {
//       data.count
//     })
//     .fail(function() {

//     })
//   })
// })
