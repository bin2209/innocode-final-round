/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Major {

    private int majorId;
    private String title;
    private String description;

    // Constructor mặc định
    public Major() {
    }

    // Constructor có tham số
    public Major(int majorId, String title, String description) {
        this.majorId = majorId;
        this.title = title;
        this.description = description;
    }

    // Getter và setter cho majorId
    public int getMajorId() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId = majorId;
    }

    // Getter và setter cho title
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    // Getter và setter cho description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
