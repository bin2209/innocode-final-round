/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Answer;
import model.DAO.User_DB;
import model.Question;
import model.User;
import model.UserAnswer;
import model.UserQuizAttempt;

/**
 *
 * @author Admin
 */
public class Quiz extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Quiz</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Quiz at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String courseId1 = request.getParameter("courseId");
        int courseId = Integer.parseInt(courseId1);
        String quizId1 = request.getParameter("quizId");
        int quizId = Integer.parseInt(quizId1);

        request.setAttribute("quizId", quizId);
        request.setAttribute("courseId", courseId);

        request.getRequestDispatcher("quiz.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy người dùng từ session
        User user = (User) request.getSession().getAttribute("USER");
        int quizId = Integer.parseInt(request.getParameter("quizId"));
        int courseId = Integer.parseInt(request.getParameter("courseId"));

        // Lấy danh sách câu hỏi cho quiz
        ArrayList<Question> questions = User_DB.getAllQuestionsByQuizId(quizId);
        int score = 0;

        // Thêm UserQuizAttempt mới vào cơ sở dữ liệu
        UserQuizAttempt uqa = new UserQuizAttempt(1, user.getUserId(), quizId, score);
        boolean check = User_DB.addNewUserQuizAttempt(uqa);

        // Lấy UserQuizAttempt mới nhất vừa được thêm vào
        UserQuizAttempt latestAttempt = User_DB.getUserQuizAttemptByUserId(user.getUserId());
        int attemptId = latestAttempt.getAttemptId();

        for (Question question : questions) {
            String selectedAnswerId = request.getParameter("question_" + question.getQuestionId());
            if (selectedAnswerId != null) {
                int answerId = Integer.parseInt(selectedAnswerId);
                Answer answer = User_DB.getAnswerById(answerId);
                if (answer != null && answer.isCorrect()) {
                    score++;
                }
                // Lưu câu trả lời của người dùng vào User_Answers
                UserAnswer userAnswer = new UserAnswer(1, attemptId, question.getQuestionId(), answerId);
                User_DB.addNewUserAnswer(userAnswer);
            }
        }

        // Cập nhật lại điểm số của UserQuizAttempt
        latestAttempt.setScore(score);
        User_DB.updateUserQuizAttemptScore(latestAttempt);

        // Gửi các thuộc tính đến trang quizResult.jsp
        request.setAttribute("score", score);
        request.setAttribute("totalQuestions", questions.size());
        request.setAttribute("quizId", quizId);
        request.setAttribute("courseId", courseId);

        // Chuyển hướng đến trang quizResult.jsp
        request.getRequestDispatcher("/quizResult.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
