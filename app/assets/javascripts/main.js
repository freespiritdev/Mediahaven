$( document ).ready(function() {
  (function($) {
    jQuery(window).load(function() {
      $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        directionNav: false,
        direction: "vertical"
      });
    });
  })(jQuery);
});