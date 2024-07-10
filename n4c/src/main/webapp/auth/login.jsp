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

        <script>
            // Check if the message variable is set or not
            document.addEventListener("DOMContentLoaded", (event) => {
                var errorMessage = "${message}";
                // Kiểm tra nếu errorMessage không rỗng, hiển thị thông báo lỗi
                if (errorMessage == "Registration Success" && errorMessage != "") {
                    swal({
                        title: "Success!",
                        text: errorMessage,
                        icon: "success",
                        button: "OK",
                    });
                } else if (errorMessage != "") {
                    swal({
                        title: "Error!",
                        text: errorMessage,
                        icon: "error",
                        button: "OK",
                    });
                }
            });
        </script>
        <div class="container mt-3">
            <div class="box-content d-flex px-5">
                <div class="col-12 col-md-6 position-relative p-0">

                    <img src="${pageContext.request.contextPath}/assets/images/alpha.png"/>
                    <div class="cel-overlay"></div>
                </div>

                <c:if test="${not empty message}">
                    <%
                        session.removeAttribute("message");
                    %>
                </c:if>

                <div class="col-12 col-md-6 mt-3 ps-5">
                    <ul class="nav-login  nav mb-3 border rounded" id="myTab" role="tablist">
                        <li class="nav-item col-6" role="presentation">
                            <button class="btn rounded w-100 " id="signup-tab" data-bs-toggle="tab" data-bs-target="#signup" type="button" role="tab" aria-controls="signup" aria-selected="true">Sign Up</button>
                        </li>
                        <li class="nav-item col-6" role="presentation">
                            <button class="btn rounded w-100 active" id="login-tab" data-bs-toggle="tab" data-bs-target="#login" type="button" role="tab" aria-controls="login" aria-selected="false" tabindex="-1">Log In</button>
                        </li>
                    </ul>

                    <div class="tab-content " id="myTabContent">
                        <div class="tab-pane fade " id="signup" role="tabpanel" aria-labelledby="signup-tab">
                            <h2 class="mb-3">Sign Up</h2>
                            <form>
                                <div class="mb-3">
                                    <label for="signupEmail" class="form-label">Email address</label>
                                    <input type="email" class="c-input rounded form-control" id="signupEmail" aria-describedby="signupEmailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="signupPassword" class="form-label">Password</label>
                                    <input type="password" class="c-input rounded form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="signupPassword" class="form-label">Re-Password</label>
                                    <input type="password" class="c-input rounded form-control">
                                </div>
                                <button type="submit" class="btn btn-primary w-75 rounded w-50 mt-3">Sign Up</button>
                            </form>
                        </div>

                        <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                            <h2 class="mb-3">Log In</h2>
                            <form>
                                <div class="mb-3">
                                    <label for="loginEmail" class="form-label">Email address</label>
                                    <input type="email" class="c-input form-control rounded" id="loginEmail" aria-describedby="loginEmailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="loginPassword" class="form-label">Password</label>
                                    <input type="password" class="c-input form-control rounded" id="loginPassword">
                                </div>
                                <div class="mb-3 form-check d-flex align-items-center  justify-content-between">
                                    <div>
                                        <input type="checkbox" class="rounded form-check-input me-2" id="rememberMe">
                                        <label class=" form-check-label " for="rememberMe">Remember me</label>  
                                    </div>

                                    <p class=""><a href="#">Forgot Password?</a></p>
                                </div>
                                <button type="submit" class="btn btn-primary rounded w-75 mt-3">Log In</button>

                            </form>
                        </div>

                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/n4c/login&response_type=code&client_id=244022125519-vt7oljom48jfdkene79prdon4im71p5n.apps.googleusercontent.com&approval_prompt=force">
                            <button class="btn btn-light rounded mt-3 w-75 border d-flex justify-content-center">
                                <img class="me-3" src="${pageContext.request.contextPath}/assets/images/gg.svg" style="width: 22px;"/>
                                Continues with Google</button>
                        </a>

                    </div>
                </div>

            </div>
        </div>

    </section>
</body>

<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/scripts.jsp" %>


