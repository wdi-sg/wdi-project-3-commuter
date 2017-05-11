$(document).on('turbolinks:load', function() {

  $(window).scroll(function() {

    var wScroll = $(this).scrollTop()

    // collapse the navbar on scroll
    if ($(".navbar-default").offset().top > 50) {
      $(".navbar-fixed-top").addClass("top-nav-collapse")
    } else {
      $(".navbar-fixed-top").removeClass("top-nav-collapse")
    }

    // team-member animation
    if (wScroll > $('.team-row').offset().top - ($(window).height() / 1.2)) {

      console.log("team");

      $('.team-row .team-col').each(function(i) {

        setTimeout(function() {
          $('.team-row .team-col').eq(i).addClass('pop')
        }, 150 * (i + 1))

      })

    }

    // about animation
    if (wScroll > $('.about-row').offset().top - ($(window).height() / 1.2)) {

      console.log("about");

      $('.about-row .about-col').each(function(i) {

        setTimeout(function() {
          $('.about-row .about-col').eq(i).addClass('pop')
        }, 150 * (i + 1))

      })

    }

    // steps animation
    if (wScroll > $('.steps-row').offset().top - ($(window).height() / 1.5)) {

      console.log("steps");

      $('.steps-row .steps-col').each(function(i) {

        setTimeout(function() {
          $('.steps-row .steps-col').eq(i).addClass('pop')
        }, 150 * (i + 1))

      })

    }

    // card animation
    if (wScroll > $('.card-row').offset().top - ($(window).height() / 1.2)) {

      console.log("CARD HERE!!!");

      $('.card-row .card-col').each(function(i) {

        setTimeout(function() {
          $('.card-row .card-col').eq(i).addClass('pop')
        }, 150 * (i + 1))

      })

    }



  });


});
