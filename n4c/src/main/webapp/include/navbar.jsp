

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
                    <a class="nav-link" href="${pageContext.request.contextPath}/achievements#achievements">Achievements</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/stocks">Stocks</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="${pageContext.request.contextPath}/courses" id="majorDropdown" role="button" aria-haspopup="true" aria-expanded="false">Major</a>
                    <ul class="dropdown-menu  rounded-1 shadow" aria-labelledby="majorDropdown">
                        <div class="position-absolute w-100 h-100 overlay-blur" style="z-index: -1;"></div>
                        <div class="position-relative">
                            <c:forEach var="major" items="${majors}">
                                <li class=""><a class="dropdown-item rounded" href="${pageContext.request.contextPath}/courses?majorId=${major.majorId}">
                                        ${major.title}
                                    </a></li>
                            </c:forEach>
                        </div>
                    </ul>
                </li>


            </ul>
            <div class="buttons">
                <%
                    User user = (User) session.getAttribute("USER");
                    if (user != null) {
                %>
                <span class="navbar-text">
                    <%= user.getEmail()%>
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