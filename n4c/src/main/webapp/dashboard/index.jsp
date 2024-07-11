<%-- 
    Document   : index.jsp
    Created on : Jul 9, 2024, 7:09:43 PM
    Author     : mac
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<%@ include file="../include/header.jsp" %>

<body class="read-page">
    <%@ include file="../include/navbar.jsp" %>
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
            transform: translateY(-33%);
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
            filter: blur(15px);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5); /* Thêm bóng màu đen để tạo hiệu ứng dark */
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
        .cel-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0); /* Ban đầu không có overlay */
            transition: background 0.3s ease; /* Thêm hiệu ứng chuyển đổi */
            pointer-events: none; /* Đảm bảo lớp phủ không chặn tương tác */
        }

        .card:hover .card-img-top {
            transform: scale(1.05);
            filter: blur(15px);
        }

        .card:hover .cel-overlay {
            background: rgba(0, 0, 0, 0.6); /* Thêm overlay màu dark khi hover */
        }
    </style>
    <section   class="section-tab bg-gradient-a dashboard">
        <div class="container">
            <div class="row">
                <div class="col-12 position-relative" style="margin-top:50px;">
                    <div class="card px-3 py-3 rounded container position-relative border-0">
                        <div class="row">
                            <div class="col-12 col-md-2 col-sm-2 text-center">
                                <div>
                                    <img class="avatar rounded" src="https://s3-sgn09.fptcloud.com/codelearnstorage/CodeCamp/CodeCamp/Upload/Avatar/3dc1632692444d999cde68f7b67271a4.jpg" alt="avatar"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-9 col-sm-9">
                                Level: ${USER.level}
                                <div class="progress mb-2">
                                    <c:set var="xp" value="${USER.xp}" />
                                    <c:set var="xpPercentage" value="${(xp / 50.0) * 100}" />
                                    <div class="progress-bar bg-success" role="progressbar" style="width: ${xpPercentage}%;" aria-valuenow="${xp}" aria-valuemin="0" aria-valuemax="50"></div>
                                </div>
                                <div>
                                    <div class="d-flex align-items-center gap-2">
                                        <span class="h5 mb-0 text-truncate">${USER.email}</span>
                                    </div>
                                    <div class="text-muted"> FPT University</div>
                                </div>
                                <div>
                                    <p>Your achievements</p>
                                    <div class="d-flex flex-wrap gap-2  overflow-hidden mt-2">
                                        <c:choose>
                                            <c:when test="${USER.level >= 1}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/first-time-logged-in.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/first-time-logged-in.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 2}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-02.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-02.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 3}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/thi dau-01.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/thi dau-01.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 4}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/hoc-tap-02.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/hoc-tap-02.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 5}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-02.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-02.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 6}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-03.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-03.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 7}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/thi dau-02.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/thi dau-02.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 8}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/hoc-tap-03.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/hoc-tap-03.png');"></div>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${USER.level >= 9}">
                                                <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-08.png');"></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-08.png');"></div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="courses">
        <div class="container mt-5">
            <div class="row">
                <c:set var="courses" value="${User_DB.getAllCoursesByUserId(USER.userId)}" />
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
                                                <a href="javascript:void(0);" onclick="showQuizzes(${course.courseId}, '${course.title}')" class="btn btn-primary rounded z-index-9999">View Details</a>
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

    <!-- Modal -->
    <div class="modal fade" id="quizModal" tabindex="-1" aria-labelledby="quizModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quizModalLabel">Quizzes</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <ul id="quizList" class="list-group">
                        <!-- Quiz items will be injected here -->
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../include/footer.jsp" %>
    <%@ include file="../include/scripts.jsp" %>

    <script>
        function showQuizzes(courseId, courseTitle) {
            // Set the modal title
            document.getElementById('quizModalLabel').innerText = courseTitle + ' - Quizzes';

            // Clear the previous quiz list
            const quizList = document.getElementById('quizList');
            quizList.innerHTML = '';

            // Fetch quizzes for the selected course
            fetch('${pageContext.request.contextPath}/getQuizzes?courseId=' + courseId)
                    .then(response => response.json())
                    .then(data => {
                        if (data.length > 0) {
                            data.forEach(quiz => {
                                const listItem = document.createElement('li');
                                listItem.className = 'list-group-item d-flex justify-content-between align-items-center';
                                listItem.innerText = quiz.title;

                                const quizButton = document.createElement('button');
                                quizButton.className = 'btn btn-primary btn-sm';

                                if (quiz.userQuizAttempt) {
                                    quizButton.innerText = 'Review';
                                    quizButton.onclick = () => {
                                        window.location.href = '${pageContext.request.contextPath}/quiz?courseId=' + courseId + '&quizId=' + quiz.quizId;
                                    };
                                } else {
                                    quizButton.innerText = 'Go to Quiz';
                                    quizButton.onclick = () => {
                                        window.location.href = '${pageContext.request.contextPath}/quiz?courseId=' + courseId + '&quizId=' + quiz.quizId;
                                    };
                                }

                                listItem.appendChild(quizButton);
                                quizList.appendChild(listItem);
                            });
                        } else {
                            const listItem = document.createElement('li');
                            listItem.className = 'list-group-item';
                            listItem.innerText = 'No quizzes available for this course.';
                            quizList.appendChild(listItem);
                        }
                    });

            // Show the modal
            const quizModal = new bootstrap.Modal(document.getElementById('quizModal'));
            quizModal.show();
        }
    </script>
