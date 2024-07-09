<%-- 
    Document   : login
    Created on : Jul 8, 2024, 6:43:16 PM
    Author     : mac
--%>
<%--<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>


<%@ include file="../include/header.jsp" %>

<body class="read-page">
    <%@ include file="../include/navbar.jsp" %>

    <section>
        <div class="container mt-3">
            <div class="box-content row">
                <div class=" col-12 col-md-6">
                    <img src=""/>
                </div>

                <div class="col-12 col-md-6">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="btn active" id="signup-tab" data-bs-toggle="tab" data-bs-target="#signup" type="button" role="tab" aria-controls="signup" aria-selected="true">Sign Up</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="btn " id="login-tab" data-bs-toggle="tab" data-bs-target="#login" type="button" role="tab" aria-controls="login" aria-selected="false">Log In</button>
                        </li>
                    </ul>

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                            <h2 class="mb-3">Sign Up</h2>
                            <form>
                                <div class="mb-3">
                                    <label for="signupEmail" class="form-label">Email address</label>
                                    <input type="email" class="rounded form-control" id="signupEmail" aria-describedby="signupEmailHelp">
                                    <div id="signupEmailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>
                                <div class="mb-3">
                                    <label for="signupPassword" class="form-label">Password</label>
                                    <input type="password" class="rounded form-control" id="signupPassword">
                                </div>
                                <button type="submit" class="btn btn-primary rounded">Sign Up</button>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="login" role="tabpanel" aria-labelledby="login-tab">
                            <h2 class="mb-3">Log In</h2>
                            <form>
                                <div class="mb-3">
                                    <label for="loginEmail" class="form-label">Email address</label>
                                    <input type="email" class="form-control rounded" id="loginEmail" aria-describedby="loginEmailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="loginPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control rounded" id="loginPassword">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="rememberMe">
                                    <label class="form-check-label" for="rememberMe">Remember me</label>
                                </div>
                                <button type="submit" class="btn btn-primary rounded">Log In</button>
                                <p class="mt-3"><a href="#">Forgot Password?</a></p>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </section>
</body>

<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/scripts.jsp" %>


