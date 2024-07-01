// Glass navbar when scroll navbar fixed

$(document).ready(function () {
    var $nav = $('.nav-outline-rounded');
    var navOffset = $nav.offset().top; // Get the initial offset position of the navbar

    function onScroll() {
        if ($(window).scrollTop() > 0) {
            $nav.addClass('fixed');
            if ($(window).scrollTop() >= navOffset) {
                $nav.addClass('overplay-blur');
            }
        } else {
            $nav.removeClass('fixed');
            $nav.removeClass('overplay-blur');
        }
    }

    $(window).on('scroll', onScroll);
});

