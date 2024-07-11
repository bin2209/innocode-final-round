// Glass navbar when scroll navbar fixed

$(document).ready(function () {

    // Swiper 

    // Initialize Swiper
    var swiper = new Swiper('.swiper-container', {
        // Optional parameters
        loop: true, // Enable looping
        autoplay: {
            delay: 4000, // 5 seconds delay for automatic slide change
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
            768: {// When window width is >= 768px (tablet and larger devices)
                slidesPerView: 4,
                spaceBetween: 30,
            },
            0: {// When window width is < 768px (mobile devices)
                slidesPerView: 2,
                spaceBetween: 40,
            }
        },
        on: {
            init: function () {
                // Hide the first slide on initialization
                var firstSlide = this.slides[0];
                firstSlide.classList.add('hidden');
            },
        },
    });
});


document.addEventListener('DOMContentLoaded', (event) => {
    const tabs = document.querySelectorAll('[data-bs-toggle="tab"]');
    let previousIndex = 0;

    tabs.forEach((tab, index) => {
        tab.addEventListener('shown.bs.tab', (e) => {
            const targetId = e.target.getAttribute('data-bs-target');
            const previousTargetId = e.relatedTarget.getAttribute('data-bs-target');
            
            const targetPane = document.querySelector(targetId);
            const previousPane = document.querySelector(previousTargetId);
            
            if (index > previousIndex) {
                targetPane.classList.add('swipe-right');
                targetPane.classList.remove('swipe-left');
            } else {
                targetPane.classList.add('swipe-left');
                targetPane.classList.remove('swipe-right');
            }
            
            previousPane.classList.remove('swipe-left', 'swipe-right');
            
            previousIndex = index;
        });
    });
});



document.addEventListener('DOMContentLoaded', function () {
    const dropdown = document.querySelector('.nav-item.dropdown');
    const dropdownMenu = dropdown.querySelector('.dropdown-menu');

    dropdown.addEventListener('mouseenter', function () {
        dropdownMenu.style.display = 'block';
    });

    dropdown.addEventListener('mouseleave', function () {
        dropdownMenu.style.display = 'none';
    });
});
