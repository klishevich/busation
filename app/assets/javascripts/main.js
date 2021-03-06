
// **************************************
// jQuery to collapse the navbar on scroll
// **************************************

$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});


$(window).resize(function(){
    if ($(window).width() < 976){   
        $('.navbar-collapse a').click(function (e) {
            $('.navbar-collapse').collapse('toggle');
        });
    }   
});



// ****************************************************************
// jQuery for page scrolling feature - requires jQuery Easing plugin
// ****************************************************************

$(function() {
    $('.page-scroll a').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});


// ****************************************************************
// owl-caurosel
// ****************************************************************         
            
$(document).ready(function() {
 
    $("#featured-list").owlCarousel({
 
        items : 4, //4 items above 1000px browser width
        itemsDesktop : [1000,4], //4 items between 1000px and 901px
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [600,1], //1 items between 600 and 0
        itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
      
    });
   
});


// ***********************************
// totop
// ***********************************

$(document).ready(function(){
    $().UItoTop({ easingType: 'easeOutQuart' });
}); 


// ***********************************
// pageloader
// ***********************************
$(window).load(function(){
    if($(".preloader").length > 0){
        $('.preloader').fadeOut(1000); // set duration in brackets
    }
});


// ***********************************
// stop video when modal close
// ***********************************

$(document).ready(function(){
  $("#video-modal").on('hide.bs.modal', function(evt){
    var player = $(evt.target).find('iframe'),
        vidSrc = player.prop('src');
    player.prop('src', ''); // to force it to pause
    player.prop('src', vidSrc);
  });
});

    
// ***********************************
// Backstretch - Slider on Background
//
//  Note :  make sure  use this  http://bootstrapwizard.info/Theme/Fullscreen/images/bg4.jpg"  when on server  but you can simply use  "images/bg1.jpg"  if you are on localhost
//
// ***********************************                                                             

// $(document).ready(function(){
//     var gpath = $location.pathname.match(/[^\/]+$/)[0];
//     var gpath = "";
//     if (gpath = "bpm")
//         gpath2 = "/images/bg-leopard-dark.jpg";
//     else
//         gpath2 = "/images/bg01.jpg";
//     $("body").backstretch([
//         gpath2
//     ], {duration: 5000, fade: 1000});
// }); 
// ***********************************
// magnificPopup
// ***********************************  
$(document).ready(function(){   
    $('.gallery-item').magnificPopup({
      type: 'image',
      gallery:{
        enabled:true
      }
    });
});  


// ****************************************************************
// wow - for animation together with animate.css
// **************************************************************** 
    
$(document).ready(function(){
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       150
      }
    );
    wow.init();
});


// ****************************************************************
// counterUp
// ****************************************************************

$(document).ready(function( $ ) {
    if($("span.count").length > 0){ 
        $('span.count').counterUp({
            delay: 10, // the delay time in ms
            time: 1000 // the speed time in ms
        });
    }
});

$(document).on('click','.navbar-collapse.collapse.in',function(e) {
    if( $(e.target).is('a') ) {
        $(this).collapse('hide');
    }
});


        


