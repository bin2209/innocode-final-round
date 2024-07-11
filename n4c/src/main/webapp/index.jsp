<%-- 
    Document   : index.jsp
    Created on : Jul 8, 2024, 6:48:14 PM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*"%>
<%@ include file="../include/header.jsp" %>

<body>
    <%@ include file="../include/navbar.jsp" %>

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





    <section class="section-tab">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center mb-5">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light">Vision</p>
                     <h2 class="title">Strategic </h2>
                    <p class="sub-title">FPT continues to pursue the larger goal of becoming a digital enterprise and ranking in the Top 50 companies in the world in providing comprehensive digital transformation services and solutions by 2030.</p>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#tab1">
                                <h3>Insdustry Relevent</h3>
                                <p>This vision emphasizes aligning educational programs with the evolving needs of various industries. By integrating practical skills and knowledge demanded by the job market, education systems can better prepare students for successful careers.
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " data-bs-toggle="tab" href="#tab2">
                                <h3>Global</h3>
                                <p>A global perspective in education encourages an understanding of diverse cultures and international collaboration. This vision aims to equip students with the skills and mindset needed to thrive in a interconnected world.
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " data-bs-toggle="tab" href="#tab3">
                                <h3>Smart Education</h3>
                                <p>Smart education leverages technology to enhance learning experiences. This vision includes utilizing digital tools, personalized learning, and data analytics to create more effective and engaging educational environments.
                                </p>
                            </a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link " data-bs-toggle="tab" href="#tab3">
                                <h3>Mega</h3>
                                <p>Recognizing and adapting to mega trends, such as technological advancements and societal shifts, is crucial for modern education. This vision involves staying ahead of significant global changes to ensure education systems remain relevant and future-proof.
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab1">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/tab1.png" alt="">
                        </div>
                        <div class="tab-pane fade" id="tab2">
                            <h3>Tab 2 Content</h3>
                            <p>This is the content for Tab 2.</p>
                        </div>
                        <div class="tab-pane fade" id="tab3">
                            <h3>Tab 3 Content</h3>
                            <p>This is the content for Tab 3.</p>
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