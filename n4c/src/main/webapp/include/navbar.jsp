<%-- 
    Document   : navbar
    Created on : Jul 8, 2024, 4:35:24 PM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*"%>

<nav id="nav" class="navbar navbar-expand-lg overplay-blur shadow">
    <div class="container ">
        <a class="navbar-brand" href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/assets/images/fpt.svg" style="width: 60px;" /> </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse w-100 justify-content-between" id="navbarNav">

            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/news">News</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/achievements">Achievements</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/stocks">Stocks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/courses">Courses</a>
                </li>
            </ul>
            <div class="buttons">
                <%
                    User user = (User) session.getAttribute("USER");
                    if (user != null) {
                %>
                <span class="navbar-text">
                    <%= user.getEmail() %>
                </span>
                <a class="btn rounded new-button" href="${pageContext.request.contextPath}/logout">Logout</a>
                <%
                    } else {
                %>
                <a class="btn rounded new-button" href="${pageContext.request.contextPath}/login?value=login">Log In</a>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</nav>

