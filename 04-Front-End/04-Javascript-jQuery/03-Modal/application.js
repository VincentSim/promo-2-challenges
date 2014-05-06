//$(document).ready(function(){
//    $('img').on('click', function(){
//    var $overlay = $('<div>').addClass('overlay');

//    $overlay.hide().appendTo($('body')).fadeIn('slow');

//    var $photo = $('<img>').attr({
//      src:$('this').attr('src')
//    }).addClass('photo');

//    $photo.hide().appendTo($('body')).fadeIn('slow');

//    $overlay.on('click', function(){
//      $photo.add($overlay).fadeOut('slow', function(){
//        $(this).remove();
//      });
//    })
//  })

//});

//$('img').click(function() {
   // $("body").append('<div class="back"><div><img class= "photo2" src= "image/image1.jpeg"></div></div>');
    //<div><img class= "photo2" src= "image/image1.jpeg"></div>
    //$("div").append('<div><img class= "photo2" src= "image/image1.jpeg"></div>');
    //$("body").append('<div class="container"><div class = "row"><img class="col-md-12" class= "photo2" src= "image/image1.jpeg"></div></div>');
//});
//<div><img class= "photo2" src= "image/image1.jpeg"></div>

$(document).ready(function(){
    $('img').on('click', function(){
    var $overlay = $('<div>').addClass('overlay'),
        $body = $('body');

    $overlay.hide().appendTo($body).fadeIn('slow');

    var $photo = $('<img>').attr({
      src:$(this).attr('src')
    });

    var $photoWrapper = $('<div>').addClass('photo-wrapper');
    $photoWrapper.hide().append($photo).appendTo($body);
    $photoWrapper.fadeIn('slow');



    $photoWrapper.on('click', function(){
      $photoWrapper.add($overlay).fadeOut('slow', function(){
        $(this).remove();
      });
    })
  })

});