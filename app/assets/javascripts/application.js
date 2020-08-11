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
//= require jquery_ujs
//= require rails-ujs

//= require vendor/modernizr-3.5.0.min
//= require vendor/jquery-1.12.4.min
//= require popper.min
//= require bootstrap.min
//= require owl.carousel.min
//= require isotope.pkgd.min
//= require ajax-form
//= require waypoints.min
//= require jquery.counterup.min
//= require imagesloaded.pkgd.min
//= require scrollIt
//= require jquery.scrollUp.min
//= require wow.min
//= require nice-select.min
//= require jquery.slicknav.min
//= require jquery.magnific-popup.min
//= require plugins
//= require gijgo.min
//= require slick.min
//= require contact
//= require jquery.ajaxchimp.min
//= require jquery.form
//= require jquery.validate.min
//= require mail-script
//= require main

//= require activestorage
//= require turbolinks
//= require_tree .

// Get the container element
var btnContainer = document.getElementById("navigation");

// Get all buttons with class="btn" inside the container
var btns = document.getElementsByClassName("Nbr");

// Loop through the buttons and add the active class to the current/clicked button
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}