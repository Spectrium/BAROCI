$('.sc-btn1').click(function () {
  $('.ligne-b1').addClass('active');
  $('.ligne-b2').removeClass('active');
  $('.sc-body-photo').hide(200);
  $('.sc-promess').fadeIn(500);
});
$('.sc-btn2').click(function () {
  $('.ligne-b1').removeClass('active');
  $('.ligne-b2').addClass('active');
  $('.sc-body-photo').fadeIn(500);
  $('.sc-promess').hide(200);
});
