package model.DAO;

import model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                    String username = rs.getString("Username");
                    String userEmail = rs.getString("Email");
                    String password = rs.getString("Password");
                    int xp = rs.getInt("xp");
                    int level = rs.getInt("Level");

                    user = new User(userId, username, userEmail, password, xp, level);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public static boolean addUser(User user) {
        String query = "INSERT INTO Users (Username, Email, Password, xp, Level) VALUES (?, ?, ?, ?, ?)";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setInt(4, user.getXp());
            pstmt.setInt(5, user.getLevel());
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
}
