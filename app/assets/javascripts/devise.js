document.addEventListener("turbolinks:load", function() {
  $('.form-control').focus(function() {
    $(this).parent().addClass('icon-color');
  });

  $('.form-group').focusout(function() {
    $(this).removeClass('icon-color');
  });

  $('.link-icon').hover(function () {
    $('.icon').toggleClass('moving-effect')
  });

  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })
});
