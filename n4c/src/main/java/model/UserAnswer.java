/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class UserAnswer {

    private int userAnswerId;
    private int attemptId;
    private int questionId;
    private int answerId;

    public UserAnswer() {
    }

    public UserAnswer(int userAnswerId, int attemptId, int questionId, int answerId) {
        this.userAnswerId = userAnswerId;
        this.attemptId = attemptId;
        this.questionId = questionId;
        this.answerId = answerId;
    }

    // Getters and Setters
    public int getUserAnswerId() {
        return userAnswerId;
    }

    public void setUserAnswerId(int userAnswerId) {
        this.userAnswerId = userAnswerId;
    }

    public int getAttemptId() {
        return attemptId;
    }

    public void setAttemptId(int attemptId) {
        this.attemptId = attemptId;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public int getAnswerId() {
        return answerId;
    }

    public void setAnswerId(int answerId) {
        this.answerId = answerId;
    }

    @Override
    public String toString() {
        return "UserAnswer{" + "userAnswerId=" + userAnswerId + ", attemptId=" + attemptId + ", questionId=" + questionId + ", answerId=" + answerId + '}';
    }

}
