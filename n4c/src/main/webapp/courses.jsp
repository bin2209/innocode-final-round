<%-- 
    Document   : courses
    Created on : Jul 11, 2024, 10:00:00 AM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>

<body>
    <%@ include file="/include/navbar.jsp" %>

    <style>.card-body {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
            transition: transform 0.3s ease-in-out, color 0.3s ease-in-out;
        }

        .card-body .card-title {
            margin: 0;
            padding: 0;
            transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out, color 0.3s ease-in-out;
            color: black;
        }

        .card-body .additional-content {
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease-in-out, visibility 0.3s ease-in-out;
            color: black;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease-in-out;
        }

        .card:hover .card-body {
            transform: translateY(-50%);
        }

        .card:hover .card-body .card-title {
            transform: translateY(-20px);
            opacity: 1;
            color: white; /* Change text color on hover */
        }

        .card:hover .card-body .additional-content {
            opacity: 1;
            visibility: visible;
            color: white; /* Change text color on hover */
            max-height: 200px; /* Adjust as needed */
        }

        .card .card-img-top {
            transition: transform 0.3s ease-in-out, filter 0.3s ease-in-out;
        }

        .card:hover .card-img-top {
            transform: scale(1.05);
            filter: blur(5px);
        }

        .card .cel-overlay {
            background: linear-gradient(0deg, rgba(0, 0, 0, 0.76) 80%, rgba(0, 0, 0, 0) 82%, rgba(0, 0, 0, 0) 105%);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            transition: background 0.3s ease-in-out;
        }

        .card:hover .cel-overlay {
            background: rgba(0, 0, 0, 0.6); /* Dark gray overlay */
        }
    </style>
    <header class="hero-section text-white d-flex align-items-center justify-content-center">
        <div class="bg-courses w-100 h-100 position-absolute"></div>
        <div class="hero-content w-100 position-absolute container">
            <div class="row px-4">
                <div class="col-12 col-md-6 mx-auto position-relative p-0">
                    <div class="cel-overlay cel-overlay-hotnews p-0"></div>
                    <img class="hotnews p-0" src="${pageContext.request.contextPath}/assets/images/hotnews.png" class="img-fluid">
                        <h4 class="hotnews-title position-absolute">Explore Our Courses</h4>
                        <a class="read-more bottom-0 text-light position-absolute" href="#">Read More 
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8"/>
                            </svg>
                        </a>
                </div>

                <div class="col-12 col-md-6 px-4 pt-4">
                    <div class="col-8 ps-2"> 
                        <h1 class="display-4">Join <span class="">Our Community</span></h1>
                        <p class="lead text-dark">Enroll in our advanced technology courses to enhance your skills and career.</p>

                        <div class="buttons mt-4">
                            <a class="btn new-button rounded" href="#courses">View Courses</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="section-tab" id="courses">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center mb-5">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light">Courses</p>
                    <h2 class="title">Our Popular Courses</h2>
                    <p class="sub-title">Explore a variety of courses designed to help you achieve your goals. Learn from the best and get hands-on experience.</p>
                </div>
            </div>
            <div class="row">
                <c:choose>
                    <c:when test="${not empty courses}">
                        <c:forEach var="course" items="${courses}">
                            <div class="col-md-3 mb-4">
                                <div class="card rounded1dot2 p-0 h-100">
                                    <div class="position-relative">
                                        <img src="${course.imageUrl}" class="rounded1dot2 p-0 card-img-top h-100" alt="Course Image">
                                            <div class="cel-overlay"></div>
                                    </div>
                                    <div class="card-body position-absolute bottom-0 left-0 p-4 content">
                                        <div class="position-relative">
                                            <h5 class="card-title z-index-9999">${course.title}</h5>
                                            <div class="additional-content">
                                                <p class="card-text my-4 z-index-9999">${course.description}</p>
                                                <a href="#" class="btn btn-primary rounded z-index-9999">View Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="col-12">
                            <p class="text-center">No courses available at the moment.</p>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </section>

    <section class="bg-gradient-a brand-ai-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-md-3 mx-auto text-center">
                    <span class="big-num">25</span>
                    <h2 class="text-light outline-text text-uppercase mb-5">Anniversary</h2>
                </div>
                <div class="col-12 col-md-9">
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

    <%@ include file="/include/footer.jsp" %>
</body>
<%@ include file="/include/scripts.jsp" %>
