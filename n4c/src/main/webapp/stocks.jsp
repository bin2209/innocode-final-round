<%-- 
    Document   : stocks
    Created on : Jul 10, 2024, 10:27:40 AM
    Author     : mac
--%>
<%-- 
    Document   : index.jsp
    Created on : Jul 8, 2024, 6:48:14 PM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns"></script>

<body>
    <%@ include file="../include/navbar.jsp" %>

    <header class="hero-section text-white d-flex align-items-center justify-content-center">
        <div class="bg-stock w-100 h-100 position-absolute">

        </div>
        <div class="hero-content w-100 position-absolute container">
            <div class="row px-4">
                <div class="col-12 col-md-6 mx-auto position-relative p-0">
                    <div class="cel-overlay cel-overlay-hotnews p-0"></div>
                    <img class="hotnews p-0" src="${pageContext.request.contextPath}/assets/images/hotnews.png" class="img-fluid">
                        <h4 class="hotnews-title position-absolute">Cổ đông nội bộ FPT: Cổ phiếu FPT xứng đáng là hạng mục đầu tư lâu dài</h4>
                        <a class="read-more bottom-0 text-light position-absolute" target="_blank" href="https://stockbiz.vn/tin-tuc/co-dong-noi-bo-fpt-co-phieu-fpt-xung-dang-la-hang-muc-dau-tu-lau-dai/24584490">Read More <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8"/>
                            </svg>
                        </a>
                </div>


                <div class="col-12 col-md-6 px-4 pt-4">
                    <div class="col-8 ps-2"> 
                        <h1 class="display-4">Invest in <span class="">HOSE: FPT.VN</span></h1>
                        <p class="lead text-dark">Begin your AI-driven enterprise swiftly - initiate with advanced technology in just
                            a few minutes for enhanced efficiency.</p>

                        <div class="buttons mt-4">
                            <a class="btn  new-button rounded" href="#invest">Invest Us</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>




    <section class="section-tab">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center mb-5">
                    <p class="text-uppercase text-rounded font-weight-300 mx-auto text-center my-5 text-light">Stocks</p>
                    <h2 class="title">Strategic </h2>
                    <p class="sub-title">FPT continues to pursue the larger goal of becoming a digital enterprise and ranking in the Top 50 companies in the world in providing comprehensive digital transformation services and solutions by 2030.</p>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="timePeriod">Select Time Period:</label>
                    <select id="timePeriod">
                        <option value="1d">1 Day</option>
                        <option value="5d">5 Days</option>
                        <option value="1mo">1 Month</option>
                        <option value="1y">1 Year</option>
                    </select>
                    <canvas id="stockChart" width="400" height="200"></canvas>
                    <div id="percentageChange"></div>
                </div>
                <div class="col-md-6">

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





    <script src="${pageContext.request.contextPath}/assets/js/stocks.js"></script>

    <%@ include file="../include/footer.jsp" %>
</body>
<%@ include file="../include/scripts.jsp" %>
