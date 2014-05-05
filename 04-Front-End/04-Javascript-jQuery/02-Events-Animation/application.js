/*
  *
  * TODO: add your code here!
  *
*/

$("#message-wrapper").hide();
$("#message-wrapper").slideDown().delay(1500);

$('#message-wrapper').on('click', function(e) {
  $('#message').hide();
});

$("#message-wrapper").on('mouseenter',function(e) {
  $('#message').slideDown();
});

$("#message-wrapper").on('mouseleave',function(e) {
  $('#message').hide();
});

//$('h1').on('click', function(e) {
  //$(this).height(200);
//});