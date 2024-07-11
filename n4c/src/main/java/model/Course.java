/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

public class Course {

    private int courseId;
    private String title;
    private String description;
    private Date createdAt;
    private String imageUrl; // Add this field
    private int majorId;

    // Constructor
    public Course() {
    }

    public Course(int courseId, String title, String description, Date createdAt, String imageUrl, int majorId) {
        this.courseId = courseId;
        this.title = title;
        this.description = description;
        this.createdAt = createdAt;
        this.imageUrl = imageUrl;
        this.majorId = majorId;
    }
    // Getters and Setters

    public int getMajorId() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId = majorId;
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

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return "Course{" + "courseId=" + courseId + ", title=" + title + ", description=" + description + ", createdAt=" + createdAt + ", imageUrl=" + imageUrl + '}';
    }

}
