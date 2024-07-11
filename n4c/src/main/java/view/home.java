/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.DAO.User_DB;
import model.Major;

/**
 *
 * @author ThanhDuoc
 */
public class home extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User_DB udb = new User_DB();
        ArrayList<Major> majors = udb.getAllMajor(); // Lấy danh sách các ngành học từ CSDL
        request.getSession().setAttribute("majors", majors); // Đẩy danh sách lên session

        request.getRequestDispatcher("index.jsp").forward(request, response); // Forward đến trang index.jsp
    }

}
