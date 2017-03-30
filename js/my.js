$(document).ready(function() {

	 $(".button-collapse").sideNav();
	$('.slider').slider('pause');
	// Start slider
	$('.slider').slider('start');

  //buat corousal jadi fto bisa jalan sendiri
    $('.carousel').carousel();
    
    $('.slider').slider({
        full_width: true
    });

   $('.parallax').parallax();
    
    $('select').material_select();
  // Next slide
$('.carousel').carousel('next');
$('.carousel').carousel('next', [3]); // Move next n times.
// Previous slide
$('.carousel').carousel('prev');
$('.carousel').carousel('prev', [4]); // Move prev n times.
      

  $('.scrollspy').scrollSpy();
  $('.fixed-action-btn').openFAB();
   $('.fixed-action-btn').closeFAB();
   
   //buat collap pas di klik muncul kontent
   
    $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
   
        
}) ;