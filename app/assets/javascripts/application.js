// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require masonry.js
//= require imagesloaded.js
//= require_tree .
//= require turbolinks



$( document ).ready(function(){
    if(window.location.href.indexOf("static_pages")  > -1) {
       $('.navbar').addClass('scrolled');
    }
    if(window.location.href.indexOf("static_pages")  < 1) {
        if ($('.navbar').length > 0) {
            $(window).on("scroll load resize", function () {
                checkScroll();
            });
        }
    }
    function checkScroll() {
        var startY = $('.navbar').height() * 2; //The point where the navbar changes in px

        if ($(window).scrollTop() > startY) {
            $('.navbar').addClass("scrolled");
        } else {
            $('.navbar').removeClass("scrolled");
        }
    }
    $('#container').imagesLoaded( function() {
        $('.grid').masonry({
            // options...
            itemSelector: '.grid-item',
            columnWidth: '.grid-sizer',
            percentPosition: true
        });
    });

    $(".smallDogTop").mouseenter( function() {
        $('.dogTextTop').css('opacity','1.0')
    } ).mouseleave( function() {
        $('.dogTextTop').css('opacity','0')
    } );
});

