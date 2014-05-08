// Your validation code will go in there.
// Write your validation functions, and bind events
// in a jQuery DOM ready callback
var $click = 0;

$( "input" )
  .focusout(function() {
//    $('form').trigger('myevent');
    if ($(this).val().length > 1)
    {valid($(this));}
  });

  //zipcodeverification
$("#zip_code")
  .focusout(function() {
//    $('form').trigger('myevent');
    if ($(this).val().length == 5 && $(this).val().match(/^[0-9]{5}$/) != null)
      {valid($(this));}
    else
      {novalid($(this));}
  });

  //emailadresse
$("#email")
  .focusout(function() {
//    $('form').trigger('myevent');
    if ($(this).val().match(/^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/) != null)
      {valid($(this));}
    else
      {novalid($(this));}
  });


$("#mobile_phone")
  .focusout(function() {
 //   $('form').trigger('myevent');
    if
      ($(this).val().match(/^[0][6][0-9]{8}$/) != null)
      {valid($(this));}
    else
      {novalid($(this));}
  });

//validation
$('input, textarea').on('focusout click', function(){
//$('form').on('myevent', function(){
  console.log('My event triggered');
if
  ($('input:checkbox').prop('checked')
  && $('.valid').length == 8)
  {$('button').removeAttr( "disabled" );}
else
  {$('button').prop( "disabled", true );}
});

function valid(arg){
  arg.removeClass("novalid").addClass("valid");
}

function novalid(arg){
  arg.removeClass("valid").addClass("novalid");
}