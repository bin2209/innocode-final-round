<%-- 
    Document   : learn
    Created on : Jul 9, 2024, 8:56:31 PM
    Author     : mac
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>


<%@ include file="../include/header.jsp" %>

<body class="read-page">
    <%@ include file="../include/navbar.jsp" %>
<!--    <section class="bg-gradient-a dashboard">

    </section>-->

    <section>
        <div class="container mt-5">
            <div id="courseForm" class="bs-stepper">
                <!-- Stepper content -->
                <div class="bs-stepper-content">
                    <div role="tablist">
                        <div class="step active" data-target="#test-l-1">
                            <div class="step-trigger visually-hidden" role="tab" id="courseFormtrigger1" aria-controls="test-l-1" aria-selected="true"></div>
                        </div>
                        <div class="step" data-target="#test-l-2">
                            <button type="button" class="step-trigger visually-hidden" role="tab" id="courseFormtrigger2" aria-controls="test-l-2" aria-selected="false"></button>
                        </div>
                        <div class="step" data-target="#test-l-3">
                            <button type="button" class="step-trigger visually-hidden" role="tab" id="courseFormtrigger3" aria-controls="test-l-3" aria-selected="false"></button>
                        </div>
                        <div class="step" data-target="#test-l-4">
                            <button type="button" class="step-trigger visually-hidden" role="tab" id="courseFormtrigger4" aria-controls="test-l-4" aria-selected="false"></button>
                        </div>
                        <div class="step" data-target="#test-l-5">
                            <button type="button" class="step-trigger visually-hidden" role="tab" id="courseFormtrigger5" aria-controls="test-l-5" aria-selected="false"></button>
                        </div>
                    </div>
                    
                    
                    <form onsubmit="return false">
                        <!-- Content one -->
                        <div id="test-l-1" role="tabpanel" class="bs-stepper-pane  dstepper-block active">
                            <div class="card mb-4">
                                <!-- Card body -->
                                <div class="card-body">
                                    <!-- quiz -->
                                    <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-3">
                                        <div class="d-flex align-items-center">
                                            <!-- quiz img -->
                                            <a href="#"><img src="../assets/images/course/course-react.jpg" alt="course" class="rounded img-4by3-lg"></a>
                                            <!-- quiz content -->
                                            <div class="ms-3">
                                                <h3 class="mb-0"><a href="#" class="text-inherit">React Basic Quiz</a></h3>
                                            </div>
                                        </div>
                                        <div>
                                            <span class="text-danger"><i class="fe fe-clock me-1 align-middle"></i>00:05:55</span>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <!-- text -->
                                        <div class="d-flex justify-content-between">
                                            <span>Exam Progress:</span>
                                            <span>Question 1 out of 5</span>
                                        </div>
                                        <!-- progress bar -->
                                        <div class="mt-2">
                                            <div class="progress" style="height: 6px;">
                                                <div class="progress-bar bg-success" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- text -->
                                    <div class="mt-5">
                                        <span>Question 1</span>
                                        <h3 class="mb-3 mt-1">React is mainly used for building ___.</h3>
                                        <!-- list group -->
                                        <div class="list-group">
                                            <div class="list-group-item list-group-item-action">
                                                <!-- form check -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label stretched-link" for="flexRadioDefault1">Database</label>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action">
                                                <!-- form check -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                                                    <label class="form-check-label stretched-link" for="flexRadioDefault2">Connectivity</label>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action">
                                                <!-- form check -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                                                    <label class="form-check-label stretched-link" for="flexRadioDefault3">User interface</label>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action">
                                                <!-- form check -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault4">
                                                    <label class="form-check-label stretched-link" for="flexRadioDefault4">Design Platform</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <!-- Button -->
                            <div class="mt-3 d-flex justify-content-end">
                                <button class="btn btn-primary" onclick="courseForm.next()">Next <i class="fe fe-arrow-right"></i></button>
                            </div>
                            
                            
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/scripts.jsp" %>
