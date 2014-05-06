/*
  *
  * TODO: add your code here!
  *
*/
$("#message").hide();
$("#message").slideDown().delay(1500);

//correction :

$(document).ready(function(){
  $('#message').hide().delay(500).slideDown();
});

//----------------------------------------------------------------//

$('#message').on('click', function(e) {
  $('#message').hide();
});

//correction :

$(document).ready(function(){
  $('#message').hide().delay(500).slideDown();
  $('#message').on('click', function(){
    $(this).slideUp()
  })
});

//----------------------------------------------------------------//

$("#message-wrapper").on('mouseenter',function(e) {
  $('#message').slideDown();
});

//correction :

$("#message-wrapper").on('mouseenter',function(e) {
  $('#message').slideDown();
});

//----------------------------------------------------------------//

$("#message-wrapper").on('mouseleave',function(e) {
  $('#message').hide();
});

//correction :

$("#message-wrapper").on('mouseleave',function(e) {
  $('#message').slideUp();
});

//----------------------------------------------------------------//
//$('h1').on('click', function(e) {
  //$(this).height(200);
//});