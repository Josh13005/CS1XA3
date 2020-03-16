jQuery(document).ready(function($) {
   $(".smoothscroll").on('click', function(e) {
 
     // Make sure this.hash has a value before overriding default behavior
     if (this.hash !== "") {
       // Prevent default anchor click behavior
       e.preventDefault();
 
       var target = this.hash,
       $target = $(target);
 
       $('html, body').stop().animate({
         'scrollTop': $target.offset().top
       }, 600, 'swing', function(){
         window.location.hash = target;
       });
     }
   });

   $(window).load(function() {
    $(".loader").delay(2000).fadeOut("slow");
    $("#overlayer").delay(2000).fadeOut("slow");
  });

    $('.accordian_title').click(function(){
      $(this).closest('.accordian_item').siblings().removeClass('active').find('.accordian_content').slideUp(400)
      $(this).closest('.accordian_item').toggleClass('active').find('.accordian_content').slideToggle(400);
      return false;
  });
  
});
 


