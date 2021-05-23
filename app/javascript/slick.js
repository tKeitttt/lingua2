$(function() {
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 6000,
    dots: true,  
  });

  $('.slick-dots li').on('mouseover', function() {
    $('.slider').slick('goTo', $(this).index());
  });
});