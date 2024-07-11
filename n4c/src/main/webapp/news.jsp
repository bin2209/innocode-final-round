<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
<body>
    <%@ include file="../include/navbar.jsp" %>
    <style>
        .lead {
            color: #FF8C00; /* Dark orange color */
            font-weight: bold;
        }

        .hero-section {
            min-height: 100vh;
            background: url('${pageContext.request.contextPath}/assets/images/hero-bg.jpg') no-repeat center center/cover;
        }

        .card-title {
            font-weight: bold;
        }

        .card-text {
            font-size: 14px;
        }

        .section-posts .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .section-posts .card-body h3 {
            font-size: 18px;
            font-weight: bold;
        }

        .section-posts .card-body p {
            font-size: 14px;
        }

        .section-posts .card-header img {
            border-radius: 8px;
        }
          .swiper {
            width: 100%;
            height: 400px;
        }

        .swiper-slide {
            display: flex;
            justify-content: center;
            align-items: center;
            border: 5px solid #FF8C00; /* Màu cam cho border */
            box-sizing: border-box;
            margin-right: 10px; /* Khoảng cách giữa các slide */
            background-color: white;
        }

        .swiper-slide img {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain; /* Đảm bảo hình ảnh nằm gọn trong border */
        }

        .swiper-horizontal {
            display: flex;
            flex-direction: row;
        }

        .swiper-pagination, .swiper-button-prev, .swiper-button-next, .swiper-scrollbar {
            background-color: #FF8C00; /* Màu cam cho các nút điều khiển */
        }

        .swiper-button-prev, .swiper-button-next {
            color: #FF8C00; /* Màu cam cho các mũi tên điều hướng */
        }

        .swiper-material-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .swiper-material-content {
            position: relative;
            text-align: center;
        }

        .swiper-material-animate-opacity {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            color: #FF8C00; /* Màu cam cho nhãn */
            opacity: 0;
            transition: opacity 0.5s;
        }

        .swiper-slide-active .swiper-material-animate-opacity {
            opacity: 1;
        }
    </style>

    <header class="hero-section text-center text-white d-flex align-items-center justify-content-center" style="min-height: 100vh; background: url('${pageContext.request.contextPath}/assets/images/hero-bg.jpg') no-repeat center center/cover;">
        <div class="hero-content w-100 position-relative">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h1 class="display-4">FPT Education's <span class="text-gradient">25th Anniversary</span></h1>
                    <p class="lead">Begin your AI-driven enterprise swiftly - initiate with advanced technology in just
                        a few minutes for enhanced efficiency.</p>
                    <div class="buttons mt-4">
                        <a class="btn btn-primary btn-lg mx-2" href="#">Demo</a>                        
                    </div>
                </div>
            </div>
        </div>

        <div class="liquid">
            <div class="liquid-main rotate liquid-item"></div>
            <div class="liquid-sub-right-end liquid-item zoom-in-out"></div>
            <div class="liquid-item-1 liquid-item center-subject-out1"></div>
            <div class="liquid-item-2 liquid-item center-subject-out2"></div>
            <div class="liquid-item-3 liquid-item center-subject-out3"></div>
            <div class="liquid-item-4 liquid-item center-subject-out4"></div>
            <div class="liquid-item-5 liquid-item center-subject-out5"></div>
        </div>
    </header>

    <section class="newsfeed">
        <div class="swiper swiper-horizontal">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="swiper-material-wrapper">
                        <div class="swiper-material-content">
                            <img class="demo-material-image" data-swiper-material-scale="1.25" src="${pageContext.request.contextPath}/upload/fpt5.jpg"/>
                            <span class="demo-material-label swiper-material-animate-opacity">Slide 1</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="swiper-material-wrapper">
                        <div class="swiper-material-content">
                            <img class="demo-material-image" data-swiper-material-scale="1.25" src="${pageContext.request.contextPath}/upload/fpt2.jpg"/>
                            <span class="demo-material-label swiper-material-animate-opacity">Slide 2</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>

            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>

            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>
    </section>

    <section class="section-posts bg-gradient-c py-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center mb-5">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light">News</p>
                    <h2 class="title">FPT Education News</h2>
                    <p class="sub-title">Stay updated with the latest news and events from FPT Education. Discover how we are shaping the future of education with innovative programs and global collaborations.</p>
                </div>
            </div>
            <div class="row">
                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-4 p-0">
                    <div class="card p-2 mb-3">
                        <div class="card-header p-1 position-relative">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt.jpeg">
                            <!--<div class="cel-overlay"></div>-->
                        </div>
                        <div class="card-body">                           
                            <h3>
                                <a href="https://daihoc.fpt.edu.vn/en/opening-ceremony-at-fpt-universitys-campuses/" target="_blank" style="text-decoration: none; color: inherit;">
                                    FPT Education Opens New Campus
                                </a>
                            </h3>
                            <p>FPT Education has inaugurated a new campus, expanding its facilities to accommodate more students and enhance learning experiences.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4">
                    <div class="card h-100">
                        <div class="card-header p-0">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt1.jpg">
                        </div>
                        <div class="card-body">
                            <h3>
                                <a href="https://daihoc.fpt.edu.vn/en/fpt-university-climbs-global-rankings-in-sustainable-development/" target="_blank" style="text-decoration: none; color: inherit;">
                                    FPT University Ranked Top in Technology
                                </a>
                            </h3>
                            <p>FPT University has been ranked among the top institutions for technology education, reflecting its commitment to excellence.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4">
                    <div class="card h-100">
                        <div class="card-header p-0">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt2.jpg">
                        </div>
                        <div class="card-body">
                            <h3>
                                <a href="https://daihoc.fpt.edu.vn/en/news/" target="_blank" style="text-decoration: none; color: inherit;">
                                    FPT Education Hosts International Conference
                                </a>
                            </h3>
                            <p>FPT Education is hosting an international conference on technology and innovation, featuring speakers from around the world.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4">
                    <div class="card h-100">
                        <div class="card-header p-0">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt3.jpeg">
                        </div>
                        <div class="card-body">
                            <h3>
                                <a href="https://daihoc.fpt.edu.vn/truong-dai-hoc-fpt-cong-bo-to-chuc-giai-dau-robot-quy-mo-toan-cau-tai-viet-nam/" target="_blank" style="text-decoration: none; color: inherit;">
                                    FPT University announces organization of global robot tournament in Vietnam
                                </a>
                            </h3>
                            <p>FPT University cooperates with FIRST to organize the international robot tournament 
                                FIRST Tech Challenge Vietnam to select a regional team to compete globally in April 2024.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4">
                    <div class="card h-100">
                        <div class="card-header p-0">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt4.jpg">
                        </div>
                        <div class="card-body">
                            <h3>
                                <a href="https://fptcameraiq.vn/blog/sinh-nhat-fpt-telecom-25-nam-cuc-ky-an-tuong-qua-goc-nhin-cua-fpt-camera" target="_blank" style="text-decoration: none; color: inherit;">
                                    FPT Telecom's 25th birthday is extremely impressive through the perspective of FPT Camera
                                </a>
                            </h3>
                            <p>Besides the impressive footage and frames of the photographers.
                                The FESTFTEL25 - Connecting the Future event was also recorded in a very different and unique frame through the lens of FPT Camera.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4">
                    <div class="card h-100">
                        <div class="card-header p-0">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt5.jpg">
                        </div>
                        <div class="card-body">
                            <h3>
                                <a href="https://www.facebook.com/daihocfptdanang/photos/fuda-summer-jamboree-2024-h%C6%A1n-c%E1%BA%A3-m%E1%BB%99t-m%C3%B9a-h%C3%A8-l%C3%A0-h%C3%A0nh-tr%C3%ACnh-tr%E1%BA%A3i-nghi%E1%BB%87m-nhi%E1%BB%81u-%C4%91i%E1%BB%81u/854358806723113/" target="_blank" style="text-decoration: none; color: inherit;">
                                    💥FUDA SUMMER JAMBOREE 2024 - MORE THAN A SUMMER, A JOURNEY TO EXPERIENCE MANY NEW THINGS💥
                                </a>
                            </h3>
                            <p>Are you ready to warm yourself up with new experiences this summer? Come to FPTU, discover the secret below.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <%@ include file="/include/footer.jsp" %>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const swiper = new Swiper('.swiper', {
                // Optional parameters
                direction: 'horizontal', 
                loop: true,

                // If we need pagination
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true
                },

                // Navigation arrows
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev'
                },

                // And if we need scrollbar
                scrollbar: {
                    el: '.swiper-scrollbar',
                    draggable: true
                }
            });
        });
    </script>
</body>


<%@ include file="/include/scripts.jsp" %>
