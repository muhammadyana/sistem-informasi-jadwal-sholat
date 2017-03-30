$(document).ready(function() {
    //buat side pinggir
    $('.button-collapse').sideNav();

    //buat background parallax
    $('.parallax').parallax();

    //buat tab pas di klik muncul content
    $('ul.tabs').tabs('select_tab', 'tab_id');


   // buat Pause slider
    $('.slider').slider('pause');
    // Start slider
    $('.slider').slider('start');

        
  

    //buat slider full wodth
    $('.slider').slider({
        full_width: true
    });

    //buat lightbox pas foto di klik muncul lighbox
    $('.materialboxed').materialbox();
    
    //buat corousal jadi fto bisa jalan sendiri
    $('.carousel').carousel();

    $('.carousel').carousel('next');
    $('.carousel').carousel('next', [3]); // Move next n times.
    // Previous slide
    $('.carousel').carousel('prev');
    $('.carousel').carousel('prev', [4]); // Move prev n times.

    //buat scroll ke bawah
    $('.scrollspy').scrollSpy();

    //buat dropdown
    $(".dropdown-button").dropdown();

    //buat <select></select> bagus
    $('select').material_select();
    
    //buat collabsible 
    $('.collapsible').collapsible({
      accordion : false 
    });

    //tooltipped
    $('.tooltipped').tooltip({delay: 50});

    //buat button
    $('.fixed-action-btn').openFAB();
    $('.fixed-action-btn').closeFAB();
    // console.log($('.tabs-wrapper'));
    // $('.tabs-wrapper .row').pushpin({ top: $('.tabs-wrapper').offset().top });

    // Materialize.scrollFire(options);
    // $('.tabs-wrapper .row').pushpin({ top: $('.tabs-wrapper').offset().top });
    // $('.modal-trigger').leanModal();
     
});



    
 