/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Question {

    private int questionId;
    private int quizId;
    private String questionText;

    public Question() {
    }

    public Question(int questionId, int quizId, String questionText) {
        this.questionId = questionId;
        this.quizId = quizId;
        this.questionText = questionText;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public int getQuizId() {
        return quizId;
    }

    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    @Override
    public String toString() {
        return "Question{" + "questionId=" + questionId + ", quizId=" + quizId + ", questionText=" + questionText + '}';
    }

}
