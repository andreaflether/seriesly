document.addEventListener("turbolinks:load", function() {
  $('.form-control').focus(function() {
    $(this).parent().addClass('icon-color');
  });

  $('.form-group').focusout(function() {
    $(this).removeClass('icon-color');
  });

  $('.devise-links').hover(function () {
    $('.icon').toggleClass('moving-effect')
  })
});
