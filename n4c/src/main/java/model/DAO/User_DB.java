package model.DAO;

import model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import static model.DAO.DBinfo.driver;

public class User_DB implements DBinfo {

    public User_DB() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static User getUserByEmail(String email) {
        User user = null;
        String query = "SELECT * FROM Users WHERE email = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, email);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int userId = rs.getInt("user_id");
                    String username = rs.getString("username");
                    String userEmail = rs.getString("email");
                    String password = rs.getString("password");
                    int xp = rs.getInt("xp");
                    int level = rs.getInt("level");

                    user = new User(userId, username, userEmail, password, xp, level);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public static ArrayList<Course> getAllCourses() {
        ArrayList<Course> courses = new ArrayList<>();
        String query = "SELECT * FROM Courses";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query); ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                int courseId = rs.getInt("Course_id");
                String title = rs.getString("Title");
                String description = rs.getString("Description");
                java.util.Date createdAt = rs.getTimestamp("Created_at");
                String imageUrl = rs.getString("ImageUrl");

                Course course = new Course(courseId, title, description, createdAt, imageUrl);
                courses.add(course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courses;
    }

    public static void main(String[] args) {
        User u = getUserByEmail("phucnhde170110@fpt.edu.vn");
        System.out.println(u);
    }

}
