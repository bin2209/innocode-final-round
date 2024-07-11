<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
<body>
    <%@ include file="/include/navbar.jsp" %>
    <style>

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

            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        .section-posts .card-body p {
            font-size: 14px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            line-clamp: 3;
            -webkit-box-orient: vertical;
        }

        .section-posts img {
            border-radius: 8px;
        }


        .swiper-slide img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .swiper-horizontal {
            display: flex;
            flex-direction: row;
        }


        .swiper-button-prev, .swiper-button-next {
            color:  #FF8C00; /* Màu cam cho các mũi tên điều hướng */
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
        #news{
            margin: 100px 0;
        }

        #news .cel-overlay{
            height: 97% !important;
        }
        .cel-news-tag {
            background: #EE923D;
            width: fit-content;
            border-radius: 20px;
            margin: 13px;
            float: right;
            font-size: 14px;
            padding: 1px 12px;
            font-weight: 300;
            position: absolute;
            top: 0;
            color: white;
            right: 0;
        }
        .fill{
            transform: rotateY(0) !important;
            -webkit-transform: rotateY(0) !important;
        }
    </style>

    <header class="hero-section text-center text-white d-flex align-items-center justify-content-center">
        <video class="fill hide-for-small" preload="" playsinline="" autoplay="" muted="" loop="">
            <source src="${pageContext.request.contextPath}/assets/fpt.mp4" type="video/mp4">	</video>

    </header>



    <section id="news" class="section-posts bg-gradient-c py-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center mb-5">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light mt-4">News</p>
                    <h2 class="title">FPT Education News</h2>
                    <p class="sub-title">Stay updated with the latest news and events from FPT Education. Discover how we are shaping the future of education with innovative programs and global collaborations.</p>
                </div>
            </div>
            <div class="row">
                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4 px-3 ">
                    <div class="card p-0 mb-3 rounded1dot2">
                        <div class=" p-0 position-relative">
                            <img class="img-fluid w-100 rounded1dot2" src="${pageContext.request.contextPath}/upload/fpt.jpeg">
                            <div class="cel-overlay">
                            </div>
                            <div class="cel-news-tag">Tin tức mới</div>
                        </div>
                        <div class="card-body px-4 mb-3 mt-2">                           
                            <h3>
                                <a href="https://daihoc.fpt.edu.vn/en/opening-ceremony-at-fpt-universitys-campuses/" target="_blank" style="text-decoration: none; color: inherit;">
                                    Opening Ceremony at FPT University’s campuses
                                </a>
                            </h3>
                            <p>FPT Education has inaugurated a new campus, expanding its facilities to accommodate more students and enhance learning experiences.</p>
                        </div>
                    </div>
                </div>

                <!-- Loop this post in back-end -->
                <div class="col-12 col-md-4 col-sm-6 mb-4 px-3 ">
                    <div class="card p-0 mb-3 rounded1dot2">
                        <div class=" p-0 position-relative">
                            <img class="img-fluid w-100 rounded1dot2" src="${pageContext.request.contextPath}/upload/fpt1.jpg">
                            <div class="cel-overlay"></div> 
                            <div class="cel-news-tag">Tin tức mới</div>
                        </div>
                        <div class="card-body px-4 mb-3 mt-2">
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
                <div class="col-12 col-md-4 col-sm-6 mb-4 px-3 ">
                    <div class="card p-0 mb-3 rounded1dot2">
                        <div class=" p-0 position-relative">
                            <img class="img-fluid w-100 rounded1dot2" src="${pageContext.request.contextPath}/upload/fpt2.jpg">
                            <div class="cel-overlay"></div> 
                            <div class="cel-news-tag">Tin tức mới</div>
                        </div>
                        <div class="card-body px-4 mb-3 mt-2">
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
                <div class="col-12 col-md-4 col-sm-6 mb-4 px-3 ">
                    <div class="card p-0 mb-3 rounded1dot2">
                        <div class=" p-0 position-relative">
                            <img class="img-fluid w-100 rounded1dot2" src="${pageContext.request.contextPath}/upload/fpt3.jpeg">
                            <div class="cel-overlay"></div> 
                            <div class="cel-news-tag">Tin tức mới</div>
                        </div>
                        <div class="card-body px-4 mb-3 mt-2">
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
                <div class="col-12 col-md-4 col-sm-6 mb-4 px-3 ">
                    <div class="card p-0 mb-3 rounded1dot2">
                        <div class=" p-0 position-relative">
                            <img class="img-fluid w-100 rounded1dot2" src="${pageContext.request.contextPath}/upload/fpt4.jpg">
                            <div class="cel-overlay"></div> 
                            <div class="cel-news-tag">Tin tức mới</div>
                        </div>
                        <div class="card-body px-4 mb-3 mt-2">
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
                <div class="col-12 col-md-4 col-sm-6 mb-4 px-3 ">
                    <div class="card p-0 mb-3 rounded1dot2">
                        <div class=" p-0 position-relative">
                            <img class="img-fluid w-100 rounded1dot2" src="${pageContext.request.contextPath}/upload/fpt5.jpg">
                            <div class="cel-overlay"></div> 
                            <div class="cel-news-tag">Tin tức mới</div>
                        </div>
                        <div class="card-body px-4 mb-3 mt-2">
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
            const swiper = new Swiper('.swiper1', {
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

            });
        });
    </script>
</body>


<%@ include file="/include/scripts.jsp" %>
