/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

public class UserQuiz {

    private int userQuizId;
    private int userId;
    private int quizId;
    private String userAnswer;
    private boolean isCorrect;
    private Date attemptedAt;

    // Getters and Setters
    public int getUserQuizId() {
        return userQuizId;
    }

    public void setUserQuizId(int userQuizId) {
        this.userQuizId = userQuizId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getQuizId() {
        return quizId;
    }

    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }

    public String getUserAnswer() {
        return userAnswer;
    }

    public void setUserAnswer(String userAnswer) {
        this.userAnswer = userAnswer;
    }

    public boolean isCorrect() {
        return isCorrect;
    }

    public void setCorrect(boolean isCorrect) {
        this.isCorrect = isCorrect;
    }

    public Date getAttemptedAt() {
        return attemptedAt;
    }

    public void setAttemptedAt(Date attemptedAt) {
        this.attemptedAt = attemptedAt;
    }

    @Override
    public String toString() {
        return "UserQuiz{" + "userQuizId=" + userQuizId + ", userId=" + userId + ", quizId=" + quizId + ", userAnswer=" + userAnswer + ", isCorrect=" + isCorrect + ", attemptedAt=" + attemptedAt + '}';
    }

}
