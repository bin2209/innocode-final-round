package model;

import model.DAO.User_DB;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class User {

    private int userId;
    private String username;
    private String email;
    private String password;
    private int xp;
    private int level;

    public User() {
    }

    public User(int userId, String email, String password, int xp, int level) {
        this.userId = userId;
        this.email = email;
        this.password = password;
        this.xp = xp;
        this.level = level;
    }

    // Getters and Setters
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getXp() {
        return xp;
    }

    public void setXp(int xp) {
        this.xp = xp;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public static User login(String email, String inputPassword) {
        User_DB udb = new User_DB();
        User user = udb.getUserByEmail(email);
        if (user != null && hashPassword(inputPassword).equals(user.getPassword())) {
            return user;
        }
        return null;
    }

    public static String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
