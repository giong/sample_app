$(document).ready(function(){
  $('.users li:even').addClass('zebra');

  $('.users li:even').mouseover(function(){
    $(this).addClass('zebraHover');
  });

  $('.users li:even').mouseout(function() {
    $(this).removeClass('zebraHover');
  });

  $('.navbar-inner li').hover(function() {
    $(this).animate({paddingLeft: '+=15px'}, 200);
  }, function() {
    $(this).animate({paddingLeft: '-=15px'}, 200);
  });

});
