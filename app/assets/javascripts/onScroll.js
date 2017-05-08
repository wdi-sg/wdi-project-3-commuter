$(window).scroll(function() {

  var wScroll = $(this).scrollTop()

  // collapse the navbar on scroll
  if ($(".navbar-default").offset().top > 50) {
    $(".navbar-fixed-top").addClass("top-nav-collapse")
  } else {
    $(".navbar-fixed-top").removeClass("top-nav-collapse")
  }

  // team-member animation
  if(wScroll > $('.team-row').offset().top - ($(window).height() / 1.2)) {

    console.log("hi");

    $('.team-row .team-col').each(function(i){

      setTimeout(function(){
        $('.team-row .team-col').eq(i).addClass('pop')
      }, 150 * (i + 1))

    })

  }





});
