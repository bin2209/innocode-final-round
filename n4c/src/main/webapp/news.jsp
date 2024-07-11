<%-- 
    Document   : news
    Created on : Jul 10, 2024, 10:39:29 AM
    Author     : mac
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

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

    <section class="how-to-use">
        <div class="container">
            <div class="row mt-4 justify-content-end">
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
                <div class="col-12 col-md-4 col-sm-6 mb-4">
                    <div class="card h-100">
                        <div class="card-header p-0 position-relative">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/upload/fpt.jpeg">
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

    <%@ include file="../include/footer.jsp" %>

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



<%@ include file="../include/scripts.jsp" %>
