// Glass navbar when scroll navbar fixed

$(document).ready(function () {
 
    // Swiper 

    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 5,
        spaceBetween: 30,  // Adjust this value to set the space between slides
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
});




