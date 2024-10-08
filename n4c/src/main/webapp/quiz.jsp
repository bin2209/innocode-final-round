<%@ page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*" %>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/navbar.jsp" %>

<div class="progressBarControl col-12 position-fixed bottom-0 border-top" style="z-index: 1;">
    <!-- Progress bar -->
    <div class="d-flex justify-content-between justify-content-center align-items-center container mx-auto">
        <div class="col-10">
            <div class="progress">
                <div id="progressBar" class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0%</div>
            </div>
        </div>
        <div class="col-2 w-100">
            <button type="submit" form="quizForm" class="btn btn-primary rounded submit-quiz mx-5">Submit</button>
        </div>
    </div>
</div>

<section class="quiz-section">
    <div class="container quiz" style="margin-top: 50px;">
        <div class="row">
            <div class="col-12 col-md-8 mx-auto text-center mb-5">
                <h2 class="title">Quiz Questions</h2>
                <p class="sub-title">Answer the following questions:</p>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <form id="quizForm" action="quiz" method="post">
                    <input type="hidden" name="courseId" value="${courseId}">
                    <input type="hidden" name="quizId" value="${quizId}">

                    <div class="list-group rounded1dot2">
                        <c:set var="questions" value="${User_DB.getAllQuestionsByQuizId(quizId)}" />
                        <c:forEach var="question" items="${questions}">
                            <c:set var="answers" value="${User_DB.getAllAnswersByQuestionId(question.questionId)}" />
                            <div class="list-group-item p-4">
                                <h5 class="mb-3">${question.questionText}</h5>
                                <c:forEach var="answer" items="${answers}">
                                    <div class="form-check">
                                        <input class="form-check-input answer-radio" type="radio" id="answer_${answer.answerId}" name="question_${question.questionId}" value="${answer.answerId}">
                                        <label class="form-check-label" for="answer_${answer.answerId}">
                                            ${answer.answerText}
                                        </label>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:forEach>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%@ include file="/include/scripts.jsp" %>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const radios = document.querySelectorAll('.answer-radio');
        const progressBar = document.getElementById('progressBar');

        radios.forEach(radio => {
            radio.addEventListener('change', updateProgress);
        });

        function updateProgress() {
            const totalQuestions = document.querySelectorAll('.list-group-item').length;
            const answeredQuestions = new Set();

            radios.forEach(radio => {
                if (radio.checked) {
                    const questionId = radio.name;
                    answeredQuestions.add(questionId);
                }
            });

            const progress = (answeredQuestions.size / totalQuestions) * 100;
            progressBar.style.width = progress + '%';
            progressBar.setAttribute('aria-valuenow', progress);
            progressBar.innerText = Math.round(progress) + '%';
        }
    });
</script>
