// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });


$(document).ready(function() {  
var stickyNavTop = $('form').offset().top - 20;  
  
var stickyNav = function(){  
var scrollTop = $(window).scrollTop();  
       
if (scrollTop > stickyNavTop) {   
    $('form').addClass('sticky');
    $('.what').css({'margin-bottom': 110});
} else {  
    $('form').removeClass('sticky');
    $('.what').css({'margin-bottom': 70});   
}  
};  
  
stickyNav();  

$(window).scroll(function(i){
    $('.title-top').css({'opacity':( 110-($(window).scrollTop()/2.7) )/100});
    $('.what').css({'opacity':( 135-($(window).scrollTop()/2.7) )/100});
    $('.join-others').css({'opacity':( 135-($(window).scrollTop()/2.7) )/100});
    $('.down-arrow').css({'opacity':( 200-($(window).scrollTop()/2.7) )/100});
    $('#header-fixed').css({'opacity':( ($(window).scrollTop()/1.8) - 280)/100});
    $('#header-fixed').css({'height':( ($(window).scrollTop()/1.3) - 400)});
    stickyNav();  
});
});  
