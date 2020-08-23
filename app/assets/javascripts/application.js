// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require rails-ujs

//= require vendor/modernizr-3.5.0.min
//= require vendor/jquery-1.12.4.min
//= require owl.carousel.min
//= require imagesloaded.pkgd.min
//= require scrollIt
//= require jquery.scrollUp.min
//= require jquery.slicknav.min
//= require jquery.magnific-popup.min
//= require plugins
//= require jquery.ajaxchimp.min
//= require main
//= require candidat.js

//= require activestorage
//= require turbolinks
//= require_tree .

//flash_message 1
$(function () {
  console.log('Flash message active-OK');
  $('.flash').addClass('animate--drop-in-fade-out');
  setTimeout(function () {
    $('.flash').removeClass('animate--drop-in-fade-out');
  }, 50000);
});

// //flash_message 2

// function closeAlert() {
//   // document.getElementById("flash-disappear").className += " zoomOut";
//   document.getElementById('flash-disappear').className += ' bounceOutUp';
//   console.log('bouce popup-OK');
// }
$(document).ready(function () {
  $('.comment-engagement').hide();
  $('ul').on('click', '.btn-comment-engagement', function (e) {
    $('.comment-engagement').fadeOut(100);
    $('#comment-engagement' + e.target.id).fadeIn(500);
  });
});
