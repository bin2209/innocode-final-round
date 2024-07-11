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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import model.DAO.User_DB;
import model.User;

/**
 *
 * @author ThanhDuoc
 */
public class User_Register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("signupEmail");
        String password = request.getParameter("signupPassword");
        String rePassword = request.getParameter("signupRePassword");

        PrintWriter out = response.getWriter();

        if (email == null || password == null || rePassword == null || !password.equals(rePassword)) {
            out.println("Invalid input!");
            return;
        }

        User_DB userDB = new User_DB();

        if (userDB.isEmailExist(email)) {
            out.println("Email already exists!");
            return;
        }

        String hashedPassword = User.hashPassword(password);

        if (hashedPassword == null) {
            out.println("Error hashing password!");
            return;
        }

        User user = new User(0, email, hashedPassword, 0, 1);

        if (userDB.addUser(user)) {
            out.println("User registered successfully!");
        } else {
            out.println("Error saving user!");
        }
    }
}
