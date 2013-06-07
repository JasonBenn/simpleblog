$(document).ready(function() {
  $('body').click(function() {
    $(this).toggleClass('night-body', 'slow');
    $('.container').toggleClass('night-container', 'slow');
  });
});
