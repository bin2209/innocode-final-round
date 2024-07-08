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
            <div class="box-content">
                <div>
                    <div>
                        <h2 class="framer-text framer-styles-preset-t66p7y">Start learning from Zero to Hero</h2>
                    </div>
                    <div>
                        <p class="framer-text framer-styles-preset-1j25qsd">Showing you how to build your own online businesses by yourself in my personal newsletter called Creative Prosperity.</p>
                    </div>
                </div>
                <form method="POST" action="login">
                    <input type="text" name="username">
                    <input type="password" name="password">
                </form>
            </div>
        </div>

    </section>
</body>

<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/scripts.jsp" %>


