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
            function validateForm() {
                return validateEmail() && validatePassword() && validateRePassword();
            }

         function validateEmail() {
    var email = document.getElementById("signupEmail").value;
    var emailHint = document.getElementById("emailHint");
    var emailRegex = /^[a-zA-Z0-9._%+-]+@(gmail\.com|fpt\.edu\.vn|fe\.edu\.vn)$/;

    var isValid = true;
    var errorMessage = "";

    if (!emailRegex.test(email)) {
        isValid = false;
        errorMessage = "Please enter a valid email address ending with @gmail.com, @fpt.edu.vn, or @fe.edu.vn.";
    }

    if (!isValid) {
        alert(errorMessage);
        emailHint.textContent = errorMessage;
    } else {
        emailHint.textContent = "";
    }

    return isValid;
}

function showEmailHint() {
    var email = document.getElementById("signupEmail").value;
    var emailHint = document.getElementById("emailHint");
    var emailRegex = /^[a-zA-Z0-9._%+-]+@(gmail\.com|fpt\.edu\.vn|fe\.edu\.vn)$/;

    if (!emailRegex.test(email)) {
        emailHint.textContent = "Please enter a valid email address ending with @gmail.com, @fpt.edu.vn, or @fe.edu.vn.";
    } else {
        emailHint.textContent = "";
    }
}
function validatePassword() {
    var password = document.getElementById("signupPassword").value;
    var lowercaseRegex = /[a-z]/;
    var uppercaseRegex = /[A-Z]/;
    var digitRegex = /\d/;
    var specialCharRegex = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;

    var isValid = true;
    var errorMessage = "";

    if (!lowercaseRegex.test(password)) {
        isValid = false;
        errorMessage += "Password must contain at least one lowercase letter.\n";
    }

    if (!uppercaseRegex.test(password)) {
        isValid = false;
        errorMessage += "Password must contain at least one uppercase letter.\n";
    }

    if (!digitRegex.test(password)) {
        isValid = false;
        errorMessage += "Password must contain at least one digit.\n";
    }

    if (!specialCharRegex.test(password)) {
        isValid = false;
        errorMessage += "Password must contain at least one special character.\n";
    }

    if (!isValid) {
        alert(errorMessage);
    }

    return isValid;
}

    function showPasswordHint() {
    var password = document.getElementById("signupPassword").value;
    var passwordHint = document.getElementById("passwordHint");
    var lowercaseRegex = /[a-z]/;
    var uppercaseRegex = /[A-Z]/;
    var digitRegex = /\d/;
    var specialCharRegex = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;

    var hintMessage = "";

    if (!lowercaseRegex.test(password)) {
        hintMessage += "Password should contain at least one lowercase letter. <br>";
    }

    if (!uppercaseRegex.test(password)) {
        hintMessage += "Password should contain at least one uppercase letter. <br>";
    }

    if (!digitRegex.test(password)) {
        hintMessage += "Password should contain at least one digit. <br>";
    }

    if (!specialCharRegex.test(password)) {
        hintMessage += "Password should contain at least one special character. <br>";
    }

    passwordHint.innerHTML = hintMessage;
}



            function validateRePassword() {
                var password = document.getElementById("signupPassword").value;
                var rePassword = document.getElementById("signupRePassword").value;

                if (password !== rePassword) {
                    alert("Passwords do not match.");
                    return false;
                }

                return true;
            }
        </script>
        <div class="container mt-3 ">
            <div class="box-content d-flex px-5" style="height: 700px;">
                <div class="col-12 col-md-6 position-relative p-0">

                    <img src="${pageContext.request.contextPath}/assets/images/alpha.png"/>
                    <div class="cel-overlay"></div>
                </div>

                <c:if test="${not empty message}">
                    <%                        session.removeAttribute("message");
                    %>
                </c:if>

                <div class="col-12 col-md-6 mt-3 ps-5">
                    <ul class="nav-login  nav mb-3 border rounded" id="myTab" role="tablist">
                        <li class="nav-item col-6" role="presentation">
                            <a href="${pageContext.request.contextPath}/register" ><button class="btn rounded w-100 active " id="signup-tab" data-bs-toggle="tab" data-bs-target="#signup" type="button" role="tab" aria-controls="signup" aria-selected="false" tabindex="-1">Sign Up</button></a>
                        </li>
                        <li class="nav-item col-6" role="presentation">
                            <a href="${pageContext.request.contextPath}/login?value=login"><button class="btn rounded w-100 " id="login-tab" data-bs-toggle="tab" data-bs-target="#login" type="button" role="tab" aria-controls="login" aria-selected="true" >Log In</button></a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                            <h2 class="mb-3">Sign Up</h2>
                            <form action="register" method="post" onsubmit="return validateForm()">
                                <div class="mb-3">
                                    <label for="signupEmail" class="form-label">Email address</label>
                                    <input type="email" class="c-input rounded form-control" id="signupEmail" name="signupEmail" aria-describedby="emailHint" required
                                           pattern="[a-zA-Z0-9._%+-]+@gmail\.com$" title="Please enter a valid Gmail address (example@gmail.com)" autofocus
                                           oninput="showEmailHint()">
                                    <div id="emailHint" class="form-text text-danger"></div>
                                </div>
                                <div class="mb-3">
                                    <label for="signupPassword" class="form-label">Password</label>
                                    <input type="password" class="c-input rounded form-control" id="signupPassword" name="signupPassword" required
                                           oninput="showPasswordHint()">
                                    <div id="passwordHint" class="form-text text-danger"></div>
                                </div>
                                <div class="mb-3">
                                    <label for="signupRePassword" class="form-label">Re-Password</label>
                                    <input type="password" class="c-input rounded form-control" id="signupRePassword" name="signupRePassword" required>
                                </div>
                                <button type="submit" class="btn btn-primary w-75 rounded w-50 mt-3">Sign Up</button>
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


