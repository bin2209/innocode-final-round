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
import jakarta.servlet.http.HttpSession;
import model.DAO.User_DB;
import model.User;

/**
 *
 * @author ThanhDuoc
 */
public class User_Register extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/auth/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("signupEmail");
        String password = request.getParameter("signupPassword");
        String rePassword = request.getParameter("signupRePassword");

        PrintWriter out = response.getWriter();

        if (password == null || rePassword == null || !password.equals(rePassword)) {
            String msg = "Passwords are not duplicates";
            session.setAttribute("message", msg);
            response.sendRedirect(request.getContextPath() + "/register");
            return;
        }

        User_DB userDB = new User_DB();

        if (userDB.isEmailExist(email)) {
            String msg = "Email already exist";
            session.setAttribute("message", msg);
            response.sendRedirect(request.getContextPath() + "/register");
            return;
        }

        String hashedPassword = User.hashPassword(password);

        if (hashedPassword == null) {
            out.println("Error hashing password!");
            return;
        }

        User user = new User(0, email, hashedPassword, 0, 1);

        if (userDB.addUser(user)) {
            String msg = "Registration Success";
            session.setAttribute("message", msg);
            response.sendRedirect(request.getContextPath() + "/login?value=login");
        } else {
            String msg = "Error while register";
            session.setAttribute("message", msg);
            response.sendRedirect(request.getContextPath() + "/register");
        }
    }
}
