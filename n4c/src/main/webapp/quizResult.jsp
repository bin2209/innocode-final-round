<%@page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*"%>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/navbar.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-12 col-md-8 mx-auto text-center mb-5">
            <h2 class="title">Quiz Results</h2>
            <p class="sub-title">Here are your results:</p>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="list-group">
                <c:set var="questions" value="${User_DB.getAllQuestionsByQuizId(quizId)}" />
                <c:set var="allAnswers" value="${User_DB.getAllUserAnswerByAttemptId(latestAttempt.attemptId)}" />

                <c:forEach var="question" items="${questions}">
                    <c:set var="answers" value="${User_DB.getAllAnswersByQuestionId(question.questionId)}" />
                    <div class="list-group-item">
                        <h5 class="mb-3">${question.questionText}</h5>
                        <c:forEach var="answer" items="${answers}">
                            <div class="form-check">
                                <input class="form-check-input answer-radio" type="radio" id="answer_${answer.answerId}" name="question_${question.questionId}" value="${answer.answerId}" disabled
                                       <c:forEach var="userAnswer" items="${allAnswers}">
                                           <c:if test="${userAnswer.questionId == question.questionId && userAnswer.answerId == answer.answerId}">
                                               checked
                                           </c:if>
                                       </c:forEach>
                                       >
                                <label class="form-check-label" for="answer_${answer.answerId}">
                                    ${answer.answerText} 
                                    <c:if test="${answer.isCorrect()}"> <strong>(Correct Answer)</strong> </c:if>
                                    </label>
                                </div>
                        </c:forEach>
                        <div class="mt-2">
                            <strong>Correct Answer:</strong>
                            <c:forEach var="correctAnswer" items="${answers}">
                                <c:if test="${correctAnswer.correct}">
                                    <div>${correctAnswer.answerText}</div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="mt-4">
                <h4>Your Score: ${score} / ${totalQuestions}</h4>
            </div>
        </div>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>
<%@ include file="/include/scripts.jsp" %>
