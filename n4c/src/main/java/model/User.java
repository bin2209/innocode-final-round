package model;

public class User {
    private int userId;
    private String username;
    private String email;
    private String password;
    private int xp;
    private int level;

    public User() {
    }
    

    public User(int userId, String username, String email, String password, int xp, int level) {
        this.userId = userId;
        this.username = username;
        this.email = email;
        this.password = password;
        this.xp = xp;
        this.level = level;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", username=" + username + ", email=" + email + ", password=" + password + ", xp=" + xp + ", level=" + level + '}';
    }
}
