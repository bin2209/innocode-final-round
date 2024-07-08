<%-- 
    Document   : navbar
    Created on : Jul 8, 2024, 4:35:24 PM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav id="nav" class="navbar navbar-expand-lg overplay-blur">
    <div class="container ">
        <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/assets/images/logo-w.png" style="width: 50px;" /> </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse w-100 justify-content-between" id="navbarNav">

            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/course">Course</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">Contact</a>
                </li>
            </ul>
            <div class="buttons">
                <a class="btn  new-button" href="${pageContext.request.contextPath}/login">Log In</a>
            </div>
        </div>
    </div>
</nav>

