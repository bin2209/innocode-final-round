/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Quiz {

    private int quizId;
    private int courseId;
    private String title;
    private String description;

    public Quiz() {
    }

    public Quiz(int quizId, int courseId, String title, String description) {
        this.quizId = quizId;
        this.courseId = courseId;
        this.title = title;
        this.description = description;
    }

    public int getQuizId() {
        return quizId;
    }

    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Quiz{" + "quizId=" + quizId + ", courseId=" + courseId + ", title=" + title + ", description=" + description + '}';
    }

}
