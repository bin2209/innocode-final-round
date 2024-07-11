<%-- 
    Document   : achivements
    Created on : Jul 10, 2024, 10:26:53 AM
    Author     : mac
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<body>

    <%@ include file="../include/navbar.jsp" %>
    <style>

        .bg-gradient-c {
            padding: 60px 0;
        }

        .achievements-section .title, .projects-by-industries .title {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        .achievements-section .sub-title {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 40px;
        }

        .achievements-stats h3 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 10px;
        }

        .achievements-stats p {
            font-size: 1rem;
            color: #666;
        }

        .projects-by-industries {
            background: #f9f9f9;
            padding: 60px 0;
        }

        .chart-container {
            text-align: center;
        }

        .chart-container img {
            max-width: 100%;
            height: auto;
        }
        .achievements-stats {
            margin-left: 200px; /* Adjusting the position by 30px to the right */
        }
        .timeline-section {
            background: #f9f9f9;
            padding: 60px 0;
        }

        .timeline-section .title {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        .timeline {
            position: relative;
            max-width: 1200px;
            margin: 0 auto;
        }

        .timeline::after {
            content: '';
            position: absolute;
            width: 6px;
            background-color: #F9701C;
            top: 0;
            bottom: 0;
            left: 50%;
            margin-left: -3px;
        }

        .timeline-item {
            padding: 10px 40px;
            position: relative;
            background: inherit;
            width: 50%;
        }

        .timeline-item:nth-child(odd) {
            left: 0;
        }

        .timeline-item:nth-child(even) {
            left: 50%;
        }

        .timeline-year {
            padding: 8px;
            background: #F9701C;
            color: white;
            font-size: 1.2rem;
            position: absolute;
            top: 10px;
            left: -5px;
            text-align: center;
            width: 58px;
            height: 50px;
            line-height: 30px;
            border-radius: 50%;
            z-index: 1;
        }

        .timeline-content {
            padding: 20px 30px;
            background: white;
            position: relative;
            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .timeline-content h3 {
            margin-top: 0;
            color: #F9701C;
        }

        .timeline-content p {
            margin: 10px 0;
        }

        .timeline-content img {
            max-width: 100%;
            height: auto;
            border-radius: 6px;
        }
.timeline-item {
    position: relative;
    transition: transform 0.3s ease-in-out;
}

.timeline-item:hover {
    transform: translateY(-10px);
}

.timeline-item .full-text {
    display: none;
    margin-top: 10px;
}

.timeline-item .read-more {
    display: block;
    margin-top: 10px;
    color: orange;
    text-decoration: underline;
    cursor: pointer;
}
    </style>
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



<<<<<<< Updated upstream
    <section class="bg-gradient-c achievements-section">
=======
    <section id="achievements" class="bg-gradient-c achievements-section">
>>>>>>> Stashed changes
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto text-center">
                    <h2 class="title">Achievements</h2>
                    <p class="sub-title">FPT Education surpassed the milestone of more than 100,000 full-time equivalent students throughout the system, becoming a Mega-scale educational organization with all levels varied from primary to graduate schools.</p>
                </div>
                <div class="col-12">
                    <div class="row text-center achievements-stats">
                        <div class="col-6 col-md-2">
<<<<<<< Updated upstream
                            <h3 class="counter" data-target="10">0</h3>
                            <p>PROVINCES</p>
                        </div>
                        <div class="col-6 col-md-2">
                            <h3 class="counter" data-target="52000">0</h3>
=======
                            <h3 class="counter" data-target="20">0</h3>
                            <p>PROVINCES</p>
                        </div>
                        <div class="col-6 col-md-2">
                            <h3 class="counter" data-target="145000">0</h3>
>>>>>>> Stashed changes
                            <p>STUDENTS</p>
                        </div>
                        <div class="col-6 col-md-2">
                            <h3 class="counter" data-target="180">0</h3>
                            <p>INTERNATIONAL PARTNERS</p>
                        </div>
                        <div class="col-6 col-md-2">
                            <h3 class="counter" data-target="40">0</h3>
                            <p>COUNTRIES HAVING PARTNERS</p>
                        </div>
                        <div class="col-6 col-md-2">
                            <h3 class="counter" data-target="1">0</h3>
                            <p>INTERNATIONAL STUDENT EXCHANGE AND DEVELOPMENT CENTER</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <section class="timeline-section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="title text-center">Historic Milestone</h2>
            </div>
            <div class="col-12">
                <div class="timeline">
                    <!-- 2023 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2023</div>
                        <div class="timeline-content">
                            <h3>The Impact Ranking</h3>
                            <p>On June 1st, FPT University ranked in the 601-800 group in THE Impact Rankings 2023...</p>
                             <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>Based on the United Nations' 17 Sustainable Development Goals in terms of peace, justice, and prosperity globally, FPT University has achieved a new ranking among the 1591 universities from across the globe that are taking part in the ranking.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/image.jpg" alt="2023 Achievement">
                        </div>
                    </div>

                    <!-- 2022 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2019</div>
                        <div class="timeline-content">
                            <h3>Best Brand in Education Tertiary</h3>
                            <p>FPT University was awarded as the Best Brand in Education Tertiary in 2019...</p>
                           <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>At the ASOCIO Digital Summit 2018 (Tokyo City, Japan), the ASOCIO 2018 Award Council decided to award FPT University in the category of Excellent IT teaching educational organization. In 2018, FPT University was honored to be the Best Brands in Education Tertiary - Excellent University. FPT Education was honored in the category of Excellence educational institution brand. In November 2019, ACBSP officially recognized the teaching quality of FPT University to meet the international educational quality standards.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/ASOCIO_Awards.jpg" alt="2019 Achievement">
                        </div>
                    </div>

                    <!-- 2021 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2017</div>
                        <div class="timeline-content">
                            <h3>ICT Award, Sao Khuê, QS Star "3-star"</h3>
                            <p>FPT University gained significant achievements in training and research...</p>
                             <span class="read-more">Read More</span>     
                            <div class="full-text">
                                <p>In 10 years of operation and development, FPT University has gained impressive achievements in training and research. Domestically, FPT University has earned a reputation as an award holder in information technology such as ICT and 'Sao Khue' Awards. On the rating scale of international credibility, FPT University is the first academic institution in Vietnam to meet QS Stars' 3-star quality standard, of which criteria such as Teaching, Facilities, Employability and Social Responsibility are rated 5 stars. Besides, FPT University is one of the few universities in Vietnam to obtain quality certification - ISO 9001: 2008. In addition, FPT University's fame has been widely known thanks to its students' remarkable achievements in Vietnam and the world as well. They are ACM/ICPC. Olympic Informatics Super Cup, IT Award for Female Vietnamese, and Vietnam's Golden Globe Award.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/chung_ket_sk_2016_2017-14_59_45_468.jpg" alt="2017 Achievement">
                        </div>
                    </div>

                    <!-- 2020 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2010</div>
                        <div class="timeline-content">
                            <h3>FPT University - Da Nang Campus</h3>
                            <p>In 2010, FPT University established its Da Nang Campus...</p>
                             <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>In 2010, The Viet Nam Minister of Education and Training signed Decision No. 657/QD-BGDDT agreeing to establish the FPT University - Da Nang Campus. It is a memorable milestone for many staff and lecturers as it also marks the presence of FPT University in the Central Viet Nam region.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/BT (6).jpg" alt="2010 Achievement">
                        </div>
                    </div>

                    <!-- 2019 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2007</div>
                        <div class="timeline-content">
                            <h3>First Batch With 300 Freshmen</h3>
                            <p>In 2007, FPT University welcomed its first batch of 300 freshmen...</p>
                             <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>In the spirit of "Dream of Innovation" amidst an exciting atmosphere, FPT University held an opening ceremony of the first batch with 300 freshmen who had high expectations for an innovative education environment. After the ceremony, the students immediately enjoyed a new method of education. The first challenge was to participate in a 30 days' experience in military training, a period of preparation of fitness, discipline and collective cultural immersion.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/fpt-1-1456198275.jpg" alt="2007 Achievement">
                        </div>
                    </div>

                    <!-- 2018 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2006</div>
                        <div class="timeline-content">
                            <h3>The journey to seek trial autonomy</h3>
                            <p>In 2006, FPT University embarked on its journey towards trial autonomy...</p>
                             <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>At the end of 2006, FPT University embarked on its journey towards trial autonomy. In September 2006, the university received a decision to hold a press conference on October 5, 2006, to announce its admission plan. However, a day before the press conference, the Ministry of Education and Training sent a document not approving the university's request for trial autonomy. Despite this, the university went ahead with the press conference, informing attendees about the Ministry's decision and stating that some details and timelines in the admission plan might change. The university emphasized its continued efforts to explain the trial autonomy to the Ministry and expressed confidence that approval would come. During this challenging phase, FPT University received support from the media and various ministries and agencies, which positively impacted the university’s ability to receive quotas and permission to start admissions in November 2006.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/lekhaitruong.jpg" alt="2006 Achievement">
                        </div>
                    </div>

                    <!-- 2017 -->
                    <div class="timeline-item">
                        <div class="timeline-year">2006</div>
                        <div class="timeline-content">
                            <h3>Started its first course in January 2007</h3>
                            <p>FPT University was officially established in 2006 and started its first course in January 2007...</p>
                           <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>The idea to establish FPT University was raised during FPT Strategic Conference which took place in Ha Long in 2003. However, the realization of the plan is a lengthy process. The pre-feasibility study was presented to the authorities in December 2004, followed by the approval in 2005 and FPT University was officially established on the 8th of September 2006 and started its first course in January 2007.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/khaimac.jpg" alt="2006-1 Achievement">
                        </div>
                    </div>

                    <!-- 2016 -->
                    <div class="timeline-item">
                        <div class="timeline-year">1999</div>
                        <div class="timeline-content">
                            <h3>Vietnam's First International Standard Software Training</h3>
                            <p>In 1999, FPT University started Vietnam's first international standard software training program...</p>
                             <span class="read-more">Read More</span>
                            <div class="full-text">
                                <p>After trips to India to survey experiences and learn technology transfer by FPT leaders, two FPT-APTECH International Programmer Training Centers in Hanoi and Ho Chi Minh City were inaugurated in September 1999. This event marked the first time Vietnam implemented training for software experts according to international standards. It also laid the foundation for the FPT Education System, as well as the establishment and development of FPT University.</p>
                            </div>
                            <img src="${pageContext.request.contextPath}/upload/fpt1999.jpg" alt="1999 Achievement">
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
    <script>
<<<<<<< Updated upstream
         document.addEventListener("DOMContentLoaded", function () {
=======
       document.addEventListener("DOMContentLoaded", function () {
>>>>>>> Stashed changes
        const counters = document.querySelectorAll('.counter');
        const speed = 200; // The lower the speed, the faster the count up

        counters.forEach(counter => {
            const updateCount = () => {
                const target = +counter.getAttribute('data-target');
                const count = +counter.innerText;
                const increment = target / speed;

                if (count < target) {
                    counter.innerText = Math.ceil(count + increment);
                    setTimeout(updateCount, 1);
                } else {
                    // Only add "+" sign for specific targets
<<<<<<< Updated upstream
                    if (target === 10 || target === 52000) {
=======
                    if (target === 20 || target === 145000) {
>>>>>>> Stashed changes
                        counter.innerText = target + "+";
                    } else {
                        counter.innerText = target;
                    }
                }
            };

            updateCount();
        });
<<<<<<< Updated upstream
=======
    
        // Scroll to the achievements section if the URL contains "#achievements"
        if (window.location.hash === "#achievements") {
            const achievementsSection = document.getElementById('achievements');
            if (achievementsSection) {
                window.scrollTo({
                    top: achievementsSection.offsetTop,
                    behavior: 'smooth'
                });
            }
        }
   
>>>>>>> Stashed changes
    });
document.querySelectorAll('.read-more').forEach(link => {
    link.addEventListener('click', () => {
        const fullText = link.nextElementSibling;
        fullText.style.display = fullText.style.display === 'none' || fullText.style.display === '' ? 'block' : 'none';
        link.textContent = fullText.style.display === 'block' ? 'Read Less' : 'Read More';
    });
});
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
    </script>

</body>


<%@ include file="../include/scripts.jsp" %>
