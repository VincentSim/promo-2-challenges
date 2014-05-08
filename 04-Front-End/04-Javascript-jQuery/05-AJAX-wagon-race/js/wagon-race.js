var GRID_SIZE = 30;
var PLAYER1_KEY = 68; // D
var PLAYER2_KEY = 76; // L
var SESSION_ID = null;
var START = null;


// 1 On nous demande le chargement de la page et on récupère l'ID du jeu
$.get( "http://wagon-race-api.herokuapp.com/game/session/new", function( data ) {
  console.log("Page chargée !");
  console.log(data);
  SESSION_ID = data.session_id;
});

// 2 La page est chargé, on doit faire apparaître un bouton "Start a game"
$(function createButton() {
var btn=$("<button> Start a Game!</button>").appendTo("body")

btn.click(function() {
  $('form').show();
  $(this).hide();
});



$('form').submit(function(event) {
  event.preventDefault();


  var player1_name = $('form').find( "input[name='player1']" ).val();
  var player2_name = $('form').find( "input[name='player2']" ).val();
  var players = {
    players: [
      { name: player1_name},
      { name:  player2_name}
    ]
  };



  $.ajax({
    type:'POST',
    url:'http://wagon-race-api.herokuapp.com/game/session/'+SESSION_ID+'/new',
    data:  JSON.stringify(players),
    contentType: 'application/json',
    success:function(data){
      console.log(data);
      $('table').show();
      $('form').hide();
      generate_grid(GRID_SIZE);
      give_player_hints(PLAYER1_KEY, PLAYER2_KEY);},
    error: function(data){
      alert('API is down');
    }
      START = new Date();

  });


  $(document).on('keyup', function(event) {
      // d = 68
      // l = 76
      if (event.which == PLAYER1_KEY) {
          update_player_position("player1", 1);
      }
      if (event.which == PLAYER2_KEY) {
          update_player_position("player2", 1);
      }
  });

    var result ={

  }
});
})

function update_player_position(player, number) {
    var cases  = $('#' + player + '_race td'),
        length = cases.length,
        previous_position = cases.siblings('.active').index();

    cases.removeClass('active');
    cases.eq(previous_position + number).addClass('active');

    console.log(previous_position + number, length);
    if ((previous_position + number) >= length) {
        var fin = $.now();
        alert(player + ' has won !');
        reset();
    }
}

function generate_grid(size) {
  for (var i = 0; i < size - 1; i++) {
    $('#player1_race').append('<td></td>');
    $('#player2_race').append('<td></td>');
  }
}

function give_player_hints(player1_key, player2_key) {
  $('#player1_hint').html('Player 1: Hit <strong>' + String.fromCharCode(player1_key) + '</strong>');
  $('#player2_hint').html('Player 2: Hit <strong>' + String.fromCharCode(player2_key) + '</strong>');
}

function reset() {
    $('.racer_table td').removeClass('active');
    $('#player1_race td:first-child').addClass('active');
    $('#player2_race td:first-child').addClass('active');
}
