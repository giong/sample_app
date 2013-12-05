$(document).ready(function(){
  $('.users li:even').addClass('zebra');

  $('<input>', {
    id: 'toggleButton',
    type: 'button',
    value: 'Hide',
    click: function(){
      $('.container h1').slideUp('slow', function() {
        $('#toggleButton').fadeOut();
      });
    }
  }).insertBefore('.container h1');
 
  $('.users li').remove(':contains("DVM")');

  $('h1').text('Modified All Users');

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

  $('p:first')
    .hide()
    .slideDown('slow')
    .delay(2000)
    .fadeOut();



});
