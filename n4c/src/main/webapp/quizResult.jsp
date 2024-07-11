<%@page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*"%>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/navbar.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-12 col-md-8 mx-auto text-center mb-5">
            <h2 class="title">Quiz Results</h2>
            <p class="sub-title">Here are your results:</p>
            <p>Your Score: ${score} / ${totalQuestions}</p>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="list-group">
                <c:set var="questions" value="${User_DB.getAllQuestionsByQuizId(quizId)}" />
                <c:forEach var="question" items="${questions}">
                    <c:set var="answers" value="${User_DB.getAllAnswersByQuestionId(question.questionId)}" />
                    <c:set var="userAnswerId" value="${param['question_' + question.questionId]}" />
                    <c:set var="userAnswer" value="${User_DB.getAnswerById(userAnswerId)}" />
                    <div class="list-group-item">
                        <h5 class="mb-3">${question.questionText}</h5>
                        <c:forEach var="answer" items="${answers}">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="answer_${answer.answerId}" name="question_${question.questionId}" value="${answer.answerId}" disabled
                                       <c:if test="${userAnswerId == answer.answerId}">checked</c:if> >
                                <label class="form-check-label" for="answer_${answer.answerId}">
                                    ${answer.answerText}
                                    <c:if test="${answer.isCorrect()}">
                                        <span class="badge bg-success">Correct Answer</span>
                                    </c:if>
                                    <c:if test="${userAnswerId == answer.answerId && !answer.isCorrect()}">
                                        <span class="badge bg-danger">Your Answer</span>
                                    </c:if>
                                </label>
                            </div>
                        </c:forEach>
                    </div>
                </c:forEach>
            </div>
            <a href="course?courseId=${courseId}" class="btn btn-primary mt-3">Back to Course</a>
        </div>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>
<%@ include file="/include/scripts.jsp" %>
