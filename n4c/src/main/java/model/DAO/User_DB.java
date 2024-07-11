package model.DAO;

import model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Answer;
import model.Course;
import static model.DAO.DBinfo.driver;
import model.Major;
import model.Question;
import model.Quiz;
import model.UserAnswer;
import model.UserQuizAttempt;

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
        String query = "SELECT * FROM Courses";
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
        String query = "SELECT * FROM Courses WHERE Major_id = ?";
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

    public static ArrayList<Quiz> getAllQuizzesByCourseId(int courseId) {
        ArrayList<Quiz> quizzes = new ArrayList<>();
        String query = "SELECT * FROM Quizzes WHERE Course_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setInt(1, courseId);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int quizId = rs.getInt("Quiz_id");
                    String title = rs.getString("Title");
                    String description = rs.getString("Description");

                    Quiz quiz = new Quiz(quizId, courseId, title, description);
                    quizzes.add(quiz);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return quizzes;
    }

    public static ArrayList<Question> getAllQuestionsByQuizId(int quizId) {
        ArrayList<Question> questions = new ArrayList<>();
        String query = "SELECT * FROM Questions WHERE Quiz_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, quizId);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int questionId = rs.getInt("Question_id");
                    String text = rs.getString("Question_text");

                    Question question = new Question(questionId, quizId, text);
                    questions.add(question);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return questions;
    }

    public static ArrayList<Answer> getAllAnswersByQuestionId(int questionId) {
        ArrayList<Answer> answers = new ArrayList<>();
        String query = "SELECT * FROM Answers WHERE Question_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, questionId);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int answerId = rs.getInt("Answer_id");
                    String answerText = rs.getString("Answer_text");
                    boolean isCorrect = rs.getBoolean("Is_correct");

                    Answer answer = new Answer(answerId, questionId, answerText, isCorrect);
                    answers.add(answer);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return answers;
    }

    public static Answer getAnswerById(int answerId) {
        String sql = "SELECT * FROM Answers WHERE Answer_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, answerId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("Answer_id");
                int questionId = rs.getInt("Question_id");
                String answerText = rs.getString("Answer_text");
                boolean isCorrect = rs.getBoolean("Is_correct");
                return new Answer(id, questionId, answerText, isCorrect);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean addNewUserQuizAttempt(UserQuizAttempt attempt) {
        String query = "INSERT INTO User_Quiz_Attempts (User_id, Quiz_id, Attempt_date, Score) VALUES (?, ?, ?, ?)";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, attempt.getUserId());
            pstmt.setInt(2, attempt.getQuizId());
            pstmt.setTimestamp(3, new java.sql.Timestamp(new Date().getTime())); // Current timestamp
            pstmt.setInt(4, attempt.getScore());

            int rowsInserted = pstmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean addNewUserAnswer(UserAnswer userAnswer) {
        String query = "INSERT INTO User_Answers (Attempt_id, Question_id, Answer_id) VALUES (?, ?, ?)";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, userAnswer.getAttemptId());
            pstmt.setInt(2, userAnswer.getQuestionId());
            pstmt.setInt(3, userAnswer.getAnswerId());

            int rowsInserted = pstmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static UserQuizAttempt getUserQuizAttemptByUserId(int userId) {
        UserQuizAttempt userQuizAttempt = null;
        String query = "SELECT TOP 1 * FROM User_Quiz_Attempts WHERE User_id = ? ORDER BY Attempt_date DESC";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, userId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int attemptId = rs.getInt("Attempt_id");
                    int quizId = rs.getInt("Quiz_id");
                    Date attemptDate = rs.getTimestamp("Attempt_date");
                    int score = rs.getInt("Score");

                    userQuizAttempt = new UserQuizAttempt(attemptId, userId, quizId, score);
                    userQuizAttempt.setAttemptDate(attemptDate);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userQuizAttempt;
    }

    public static boolean updateUserQuizAttemptScore(UserQuizAttempt attempt) {
        String query = "UPDATE User_Quiz_Attempts SET Score = ? WHERE Attempt_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, attempt.getScore());
            pstmt.setInt(2, attempt.getAttemptId());
            int rowsUpdated = pstmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ArrayList<UserAnswer> getAllUserAnswerByAttemptId(int attemptId) {
        ArrayList<UserAnswer> userAnswers = new ArrayList<>();
        String query = "SELECT * FROM User_Answers WHERE Attempt_id = ?";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setInt(1, attemptId);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int userAnswerId = rs.getInt("User_Answer_id");
                    int questionId = rs.getInt("Question_id");
                    int answerId = rs.getInt("Answer_id");

                    UserAnswer userAnswer = new UserAnswer(userAnswerId, attemptId, questionId, answerId);
                    userAnswers.add(userAnswer);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userAnswers;
    }

    public static UserQuizAttempt getUserQuizAttemptByUserIdAndQuizId(int userId, int quizId) {
        UserQuizAttempt userQuizAttempt = null;
        String query = "SELECT TOP 1 * FROM User_Quiz_Attempts WHERE User_id = ? AND Quiz_id = ? ORDER BY Attempt_date DESC";
        try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass); PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, userId);
            pstmt.setInt(2, quizId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int attemptId = rs.getInt("Attempt_id");
                    int score = rs.getInt("Score");
                    Date attemptDate = rs.getTimestamp("Attempt_date");

                    userQuizAttempt = new UserQuizAttempt(attemptId, userId, quizId, score);
                    userQuizAttempt.setAttemptDate(attemptDate);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userQuizAttempt;
    }

    public static void main(String[] args) {
        ArrayList<Quiz> quiz = getAllQuizzesByCourseId(1);
        for (Quiz q : quiz) {
            System.out.println(q);
        }

        ArrayList<Question> questions = getAllQuestionsByQuizId(1);
        for (Question question : questions) {
            System.out.println(question);
        }

        ArrayList<Answer> answers = getAllAnswersByQuestionId(1);
        for (Answer a : answers) {
            System.out.println(a);
        }
    }

}
