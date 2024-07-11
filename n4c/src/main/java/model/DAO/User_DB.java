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
import model.Major;

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
        String query = "SELECT * FROM Users WHERE Email = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, email);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int userId = rs.getInt("User_id");
                    String userEmail = rs.getString("Email");
                    String password = rs.getString("Password");
                    int xp = rs.getInt("xp");
                    int level = rs.getInt("Level");

                    user = new User(userId, userEmail, password, xp, level);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public static ArrayList<Course> getAllCourses() {
        ArrayList<Course> courses = new ArrayList<>();
        String query = "SELECT * FROM Course";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query); ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                int courseId = rs.getInt("Course_id");
                String title = rs.getString("Title");
                String description = rs.getString("Description");
                java.util.Date createdAt = rs.getTimestamp("Created_at");
                String imageUrl = rs.getString("ImageUrl");
                int majorId = rs.getInt("Major_id");

                Course course = new Course(courseId, title, description, createdAt, imageUrl, majorId);
                courses.add(course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courses;
    }

    public static boolean addUser(User user) {
        String query = "INSERT INTO Users (Email, Password, xp, Level) VALUES (?, ?, ?, ?)";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, user.getEmail());
            pstmt.setString(2, user.getPassword());
            pstmt.setInt(3, user.getXp());
            pstmt.setInt(4, user.getLevel());
            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean isEmailExist(String email) {
        String query = "SELECT 1 FROM Users WHERE Email = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, email);
            try (ResultSet rs = pstmt.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ArrayList<Major> getAllMajor() {
        ArrayList<Major> majors = new ArrayList<>();
        String query = "SELECT * FROM Major";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query); ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                int majorId = rs.getInt("Major_id");
                String title = rs.getString("Title");
                String description = rs.getString("Description");
                // Nếu bạn muốn lấy thêm các trường khác từ bảng Major, hãy thêm vào đây
                Major major = new Major(majorId, title, description);
                majors.add(major);
            }
            System.out.println("Major");
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return majors;
    }

    public static ArrayList<Course> getCoursesByMajorId(int majorId) {
        ArrayList<Course> courses = new ArrayList<>();
        String query = "SELECT * FROM Course WHERE Major_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setInt(1, majorId);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int courseId = rs.getInt("Course_id");
                    String title = rs.getString("Title");
                    String description = rs.getString("Description");
                    java.util.Date createdAt = rs.getTimestamp("Created_at");
                    String imageUrl = rs.getString("ImageUrl");

                    Course course = new Course(courseId, title, description, createdAt, imageUrl, majorId);
                    courses.add(course);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courses;
    }
}
