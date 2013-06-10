var background_classes = ['night', 'day']

$(document).ready(function() {
  $('body').click(function() {
    background_classes.push(background_classes.shift());
    $(this).toggleClass(background_classes[0], 'slow');
    $('.container').toggleClass('night-container', 'slow');
  });

  $('.container').click(function(event) {
    event.stopPropagation;
  });
});
