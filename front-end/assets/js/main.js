// Glass navbar when scroll navbar fixed

$(document).ready(function () {
 
    // Swiper 

    var swiper = new Swiper('.swiper-container', {
        loop: true, // Enable looping
        autoplay: {
            delay: 5000, // 5 seconds delay for automatic slide change
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        breakpoints: {
            768: { // When window width is >= 768px (tablet and larger devices)
                slidesPerView: 4,
                spaceBetween: 60,
            },
            0: { // When window width is < 768px (mobile devices)
                slidesPerView: 2,
                spaceBetween: 40,
            }
        }
    });
});
