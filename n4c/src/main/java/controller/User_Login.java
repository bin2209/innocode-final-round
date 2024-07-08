package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.DAO.UserDAO;
import model.User;

/**
 * Servlet implementation class User_Login
 */
public class User_Login extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO(); // Initialize the UserDAO in the init() method
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/auth/login.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response); // Handle GET requests by displaying the login form
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = userDAO.getUserByEmailAndPassword(email, password);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user); // Store user object in session
            response.sendRedirect("/dashboard"); // Redirect to dashboard or home page
        } else {
            response.sendRedirect("login.jsp?error=1"); // Redirect back to login with error message
        }
    }

    @Override
    public String getServletInfo() {
        return "User Login Servlet";
    }
}
