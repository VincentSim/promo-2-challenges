//$(document).ready(function(){
//  $('#player1_race td.active').on('click', function(){
//
//
//      var $active = $('#player1_race td.active');
//
//    $active.next().addClass('active');
//    $active.removeClass('active');
//  })
//});

$(document).ready(function(){
  $(document).keyup(function(event){
    if (event.which == 65){
      var $active = $('#player1_race td.active');

      $active.next().addClass('active');
      $active.removeClass('active');
      checkIfFinish();

    }
  })

  $(document).keyup(function(event){
    if (event.which == 80){
      var $active = $('#player2_race td.active');

      $active.next().addClass('active');
      $active.removeClass('active');
      checkIfFinish();

    }
  })

});

function checkIfFinish() {
  if($('td.active').index() == 7){
    var $overlay = $('<div>').addClass('overlay');

    $overlay.hide().appendTo($('body')).fadeIn('slow');

    var $photo = $('<img src = "css/player_1.png">You Win!!!</img>').addClass('photo');
    //.attr({
      //src:$('css/player_1.png')
    //}).addClass('photo')
    $photo.hide().appendTo($('body')).fadeIn('slow')
    $overlay.on('click', function(){
      $photo.add($overlay).fadeOut('slow', function(){
        $(this).remove();
      });
    })
  };
}






