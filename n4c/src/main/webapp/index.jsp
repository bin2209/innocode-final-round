<%-- 
    Document   : index.jsp
    Created on : Jul 8, 2024, 6:48:14 PM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*"%>
<%@ include file="include/header.jsp" %>

<body>
    <%@ include file="include/navbar.jsp" %>

    <header class="hero-section text-center text-white d-flex align-items-center">
        <div class="hero-content w-100 position-absolute">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h1 class="display-4">FPT Education's <span class="text-gradient">25th Anniversary</span></h1>
                    <p class="lead">Begin your AI-driven enterprise swiftly - initiate with advanced technology in just
                        a few minutes for enhanced efficiency.</p>
                    <div class="buttons mt-4">
                        <a class="btn  new-button" href="#">Demo</a>
                        <a class="btn" href="#">Demo</a>
                    </div>
                </div>
            </div>
        </div>



        <div class="liquid ">
            <div class="liquid-main rotate liquid-item"></div>
            <div class="liquid-sub-right-end liquid-item zoom-in-out "></div>
            <div class="liquid-item-1 liquid-item center-subject-out1"></div>
            <div class="liquid-item-2 liquid-item center-subject-out2"></div>
            <div class="liquid-item-3 liquid-item center-subject-out3"></div>
            <div class="liquid-item-4 liquid-item center-subject-out4"></div>
            <div class="liquid-item-5 liquid-item center-subject-out5"></div>
        </div>
    </header>

    <section class="how-to-use ">
        <div class="container">
            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card mb-4 mb-md-0">
                        <div class="card-body d-flex">
                            <div class="col-4">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/buildwith/Layer 1.png" alt="">
                            </div>
                            <div class="col-8">
                                <h5 class="card-title">Java</h5>
                                <p class="card-text">AI-driven data analysis optimizes insights, guiding informed
                                    decisions
                                    for business growth and efficiency.</p>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 mb-md-0">
                        <div class="card-body d-flex">
                            <div class="col-4">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/buildwith/Layer 2.png" alt="">
                            </div>
                            <div class="col-8">
                                <h5 class="card-title">MS SQL</h5>
                                <p class="card-text">AI-driven data analysis optimizes insights, guiding informed
                                    decisions
                                    for business growth and efficiency.</p>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 mb-md-0">
                        <div class="card-body d-flex">
                            <div class="col-4">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/buildwith/Layer 3.png" alt="">
                            </div>
                            <div class="col-8">
                                <h5 class="card-title">Open AI</h5>
                                <p class="card-text">AI-driven data analysis optimizes insights, guiding informed
                                    decisions
                                    for business growth and efficiency.</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <section id="section-map" class="section-map">
        <div class="overplay-map"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div id="map-0" class="d-none building-map position-relative">
                        <div class="cel-overlay"></div>
                        <img class="img-fluid shadow" src="${pageContext.request.contextPath}/assets/images/building/map0.jpg"/>
                        <div class="content position-absolute bottom-0 p-4">
                            <h2>Ha Noi</h2>
                        </div>
                    </div>
                    <div id="map-1" class="d-none building-map position-relative">
                        <div class="cel-overlay"></div>
                        <img class="img-fluid shadow" src="${pageContext.request.contextPath}/assets/images/building/map1.jpg"/>
                        <div class="content position-absolute bottom-0 p-4">
                            <h2>Hue</h2>
                        </div>
                    </div>

                    <div id="map-2" class="d-none building-map position-relative">
                        <div class="cel-overlay"></div>
                        <img class="img-fluid shadow" src="${pageContext.request.contextPath}/assets/images/building/map2.jpg"/>
                        <div class="content position-absolute bottom-0 p-4">
                            <h2>Da Nang</h2>
                        </div>
                    </div>
                    <div id="map-3" class="d-none building-map position-relative">
                        <div class="cel-overlay"></div>
                        <img class="img-fluid shadow"src="${pageContext.request.contextPath}/assets/images/building/map3.jpg"/>
                        <div class="content position-absolute bottom-0 p-4">
                            <h2>Quy Nhon</h2>
                        </div>
                    </div>
                    <div id="map-4" class="d-none building-map position-relative">
                        <div class="cel-overlay"></div>
                        <img class="img-fluid shadow" src="${pageContext.request.contextPath}/assets/images/building/map4.jpg"/>
                        <div class="content position-absolute bottom-0 p-4">
                            <h2>Can Tho</h2>
                        </div>
                    </div>
                    <div id="map-5" class="d-none building-map position-relative">
                        <div class="cel-overlay"></div>
                        <img class="img-fluid shadow" src="${pageContext.request.contextPath}/assets/images/building/map5.jpeg"/>
                        <div class="content position-absolute bottom-0 p-4">
                            <h2>Ho Chi Minh</h2>
                        </div>
                    </div>

                </div>
                <div class="col-12 col-md-5 ps-5">

                    <!--<p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-4 text-light">The Building</p>-->
                    <h2 class="title text-black">The Building</h2>
                    <p class="sub-title mb-4">Acts as a gateway to the campus with a green façade clearly dictating the future direction of the campus</p>
                    <div class="position-relative px-5">
                        <img class="img-fluid" src="assets/images/building/flag.png"/>
                        <div class="building-select position-absolute w-100 h-100 top-0 left-0">
                            <a href="javascript:void(0)" onclick="showID('map-0')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg> Ha Noi</a>
                            <a href="javascript:void(0)" onclick="showID('map-1')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                                </svg> Hue</a>
                            <a href="javascript:void(0)" onclick="showID('map-2')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                                </svg> Da Nang</a>
                            <a href="javascript:void(0)" onclick="showID('map-3')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                                </svg> Quy Nhon</a>
                            <a href="javascript:void(0)" onclick="showID('map-4')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                                </svg> Can Tho</a>
                            <a href="javascript:void(0)" onclick="showID('map-5')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                                </svg> Ho Chi Minh</a>

                            <a href="javascript:void(0)">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-radar" viewBox="0 0 16 16">
                                <path d="M6.634 1.135A7 7 0 0 1 15 8a.5.5 0 0 1-1 0 6 6 0 1 0-6.5 5.98v-1.005A5 5 0 1 1 13 8a.5.5 0 0 1-1 0 4 4 0 1 0-4.5 3.969v-1.011A2.999 2.999 0 1 1 11 8a.5.5 0 0 1-1 0 2 2 0 1 0-2.5 1.936v-1.07a1 1 0 1 1 1 0V15.5a.5.5 0 0 1-1 0v-.518a7 7 0 0 1-.866-13.847"/>
                                </svg> Hoang Sa</a>

                            <a href="javascript:void(0)">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-radar" viewBox="0 0 16 16">
                                <path d="M6.634 1.135A7 7 0 0 1 15 8a.5.5 0 0 1-1 0 6 6 0 1 0-6.5 5.98v-1.005A5 5 0 1 1 13 8a.5.5 0 0 1-1 0 4 4 0 1 0-4.5 3.969v-1.011A2.999 2.999 0 1 1 11 8a.5.5 0 0 1-1 0 2 2 0 1 0-2.5 1.936v-1.07a1 1 0 1 1 1 0V15.5a.5.5 0 0 1-1 0v-.518a7 7 0 0 1-.866-13.847"/>
                                </svg> Truong Sa</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="bg-gradient-a brand-ai-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-md-3 mx-auto text-center">
                    <span class="big-num">25</span>
                    <!--<p class="text-uppercase text-light text-rounded font-weight-300 mx-auto text-center my-5">BUILD AI</p>-->
                    <h2 class=" text-light outline-text text-uppercase mb-5">Anniversary</h2>

                </div>
                <div class="col-12 col-md-9     ">
                    <h2 class="text-uppercase mb-3 text-light">trusted</h2>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img class="img-fluid brand-ai" src="${pageContext.request.contextPath}/assets/images/uni/1.png" alt="Slide 1">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid brand-ai" src="${pageContext.request.contextPath}/assets/images/uni/2.png" alt="Slide 2">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid brand-ai" src="${pageContext.request.contextPath}/assets/images/uni/3.webp" alt="Slide 3">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid brand-ai" src="${pageContext.request.contextPath}/assets/images/uni/4.svg" alt="Slide 4">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid brand-ai" src="${pageContext.request.contextPath}/assets/images/uni/5.webp" alt="Slide 5">
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>

    <section class="section-posts bg-gradient-c">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center mb-5">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light">News</p>
                    <h2 class="title">Case Studies & Resources
                        We've</h2>
                    <p class="sub-title">We've worked with the world's leading AI teams for years, and delivered more
                        high-quality data than anybody else.</p>
                    </p>
                </div>
            </div>
            <div class="row">
                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1 position-relative">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/s5.jpeg">
                            <!--<div class="cel-overlay"></div>-->
                        </div>
                        <div class="card-body p-1 mt-3">
                            <h3>Heading</h3>
                            <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/s6.jpeg">
                        </div>
                        <div class="card-body p-1 mt-3">
                            <h3>Heading</h3>
                            <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/s1.jpeg">
                        </div>
                        <div class="card-body p-1 mt-3">
                            <h3>Heading</h3>
                            <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/s2.jpeg">
                        </div>
                        <div class="card-body p-1 mt-3">
                            <h3>Heading</h3>
                            <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/s3.jpeg">
                        </div>
                        <div class="card-body p-1 mt-3">
                            <h3>Heading</h3>
                            <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/s4.jpeg">
                        </div>
                        <div class="card-body p-1 mt-3">
                            <h3>Heading</h3>
                            <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section class="bg-gradient-c ">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light">Timeline</p>
                    <h2 class="title">How We Growth</h2>
                    <p class="sub-title">For AI teams, Scale Data Engine improves your models by improving your data.
                    </p>
                </div>
                <div class="col-12">
                    <div class="box-content">
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <img class="" src="${pageContext.request.contextPath}/upload/s12.jpeg" alt="">
                            </div>
                            <div class="col-12 col-md-6 mt-4 mt-md-0 align-items-center">
                                <h2>RLHF</h2>
                                <p class="sub-title py-3">lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do
                                    eiusmod tempor incididunt ut
                                    labore et dolore magna aliqua.</p>
                                <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut
                                    labore et dolore magna aliqua.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="box-content">
                        <div class="row">
                            <div class="col-12 col-md-6 mt-4 mt-md-0 align-items-center">
                                <h2>RLHF</h2>
                                <p class="sub-title py-3">lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do
                                    eiusmod tempor incididunt ut
                                    labore et dolore magna aliqua.</p>
                                <p>lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut
                                    labore et dolore magna aliqua.</p>
                            </div>
                            <div class="col-12 col-md-6">
                                <img class="" src="${pageContext.request.contextPath}/upload/s13.jpeg" alt="">
                            </div>


                        </div>
                    </div>
                </div>
                            
            </div>
        </div>
    </section>



    <%@ include file="include/footer.jsp" %>

    <!-- Modal login -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content backdrop-blur fadeScale">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="login" class="form-label sr-only">Login</label>
                            <input type="text" class="form-control" id="login" placeholder="Login">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label sr-only">Password</label>
                            <input type="password" class="form-control" id="password" placeholder="Password">
                        </div>
                        <button type="submit" class="btn new-button">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal login -->

</body>

<script>



    function showID(id) {
        // Hide all images
        const images = document.querySelectorAll('.building-map');
        images.forEach(image => image.classList.add('d-none'));

        const sectionMap = document.getElementById("section-map");

        // Show the selected image and update the background image of the section
        const selectedImageContainer = document.getElementById(id);
        if (selectedImageContainer) {
            selectedImageContainer.classList.remove('d-none');
            const imgElement = selectedImageContainer.querySelector('img');
            if (imgElement) {
                const imageUrl = imgElement.getAttribute('src');
                const section = document.getElementById('section-map');
                sectionMap.style.backgroundImage = 'url(' + imageUrl + ')';
                console.log(imageUrl);
            }
        }
    }

// Optionally, show the first image by default
    document.addEventListener('DOMContentLoaded', () => {
        showID('map-0'); // Show the first image initially
    });


</script>

<%@ include file="include/scripts.jsp" %>