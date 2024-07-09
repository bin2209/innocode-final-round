<%-- 
    Document   : index.jsp
    Created on : Jul 9, 2024, 7:09:43 PM
    Author     : mac
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>


<%@ include file="../include/header.jsp" %>

<body class="read-page">
    <%@ include file="../include/navbar_logged.jsp" %>
    <section class="bg-gradient-a dashboard">
        <div class="container">
            <p class="my-3">Hello 'username'. Welcome to FPT. Let's explore!</p>
            <div class="row">
                <div class="col-12 position-relative">
                    <div class="card px-3 py-3 rounded container position-relative border-0">
                        <div class="row">
                            <div class="col-12 col-md-2 col-sm-2 text-center">
                                <div>
                                    <img class="avatar rounded" src="https://s3-sgn09.fptcloud.com/codelearnstorage/CodeCamp/CodeCamp/Upload/Avatar/3dc1632692444d999cde68f7b67271a4.jpg" alt="avatar"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-9 col-sm-9">
                                Level: 4
                                <div class="progress mb-2">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 50.01%;" aria-valuenow="0.01" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div>
                                    <div class="d-flex align-items-center gap-2">
                                        <span class="h5 mb-0 text-truncate">binazure</span>
                                    </div>
                                    <div class="text-muted">CNTT - FPT University</div>
                                </div>
                                <div>
                                    <p>Your achievements</p>
                                    <div class="d-flex flex-wrap gap-2  overflow-hidden mt-2">
                                        <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/first-time-logged-in.png');"></div>
                                        <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-02.png');"></div>
                                        <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/thi dau-01.png');"></div>
                                        <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/hoc-tap-02.png');"></div>
                                        <div class="badge" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-02.png');"></div>
                                        <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-03.png');"></div>
                                        <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/thi dau-02.png');"></div>
                                        <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/hoc-tap-03.png');"></div>
                                        <div class="badge grayscale" style="background-image: url('https://s3-sgn09.fptcloud.com/codelearnstorage/Upload/Badges/luyentap-08.png');"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container mt-5">
            <div class="row">

                <!--LOOP THIS--> 
                <div class="col-12 col-md-4  px-2 border-0 rounded-3">
                    <div class="card rounded">
                        <img src="${pageContext.request.contextPath}/upload/s1.jpeg" class="rounded-top card-img-top img-fluid w-100 " alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Learn FPT History</h3>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary  text-light rounded mt-3 mb-1 px-2 w-100">Start</button>
                        </div>
                    </div>
                </div>
                <!--LOOP THIS--> 

                
                <div class="col-12 col-md-4  px-2 border-0 rounded-3">
                    <div class="card rounded">
                        <img src="${pageContext.request.contextPath}/upload/s1.jpeg" class="rounded-top card-img-top img-fluid w-100 " alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Learn FPT History</h3>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary  text-light rounded mt-3 mb-1 px-2 w-100">Start</button>
                        </div>
                    </div>
                </div>
                        
                        <div class="col-12 col-md-4  px-2 border-0 rounded-3">
                    <div class="card rounded">
                        <img src="${pageContext.request.contextPath}/upload/s1.jpeg" class="rounded-top card-img-top img-fluid w-100 " alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Learn FPT History</h3>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary  text-light rounded mt-3 mb-1 px-2 w-100">Start</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</body>

<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/scripts.jsp" %>
