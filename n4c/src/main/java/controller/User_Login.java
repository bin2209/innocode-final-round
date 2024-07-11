package controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import model.DAO.User_DB;
import model.User;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Form;
import util.Constants;
import util.UserGoogleDto;

/**
 * Servlet implementation class User_Login
 */
public class User_Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        System.out.println(accessToken);
        UserGoogleDto usergg = getUserInfo(accessToken);
        System.out.println(usergg.getEmail());
        User_DB udb = new User_DB();
        User userInfo = udb.getUserByEmail(usergg.getEmail());
        if (userInfo != null) {
            String msg = "Thành công";

            request.getSession().setAttribute("USER", userInfo);
            session.setAttribute("message", msg);
//            response.sendRedirect("login?value=loginwithgoogle");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            String msg = "Email account has not been created yet! ";
            session.setAttribute("message", msg);
            response.sendRedirect("login?value=login");

        }
    }

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static UserGoogleDto getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
UserGoogleDto googlePojo = new Gson().fromJson(response, UserGoogleDto.class);

        return googlePojo;
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
        User user = (User) request.getSession().getAttribute("USER");
        String value = request.getParameter("value");
        if (value == null) {
            if (user == null) {
                processRequest(request, response);
            }
        } else {
            request.getRequestDispatcher("/auth/login.jsp").forward(request, response);
        }

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
//        String identify = request.getParameter("identify");
//        String password = request.getParameter("password");
//        String rememberMe = request.getParameter("rememberMe");
//        User user = User.login(identify, password);
//        User userInfo = User_DB.getUserByEmailorUsername(identify);
//        HttpSession session = request.getSession();
//        String message = "";
//        if (user != null) {
//
//            request.getSession().setAttribute("USER", user);
//            if ("true".equals(rememberMe)) {
//                Cookie identifyCookie = new Cookie("identify", identify);
//                Cookie passwordCookie = new Cookie("password", password);
//                Cookie rememberMeCookie = new Cookie("rememberMe", "true");
//                int cookieMaxAge = 7 * 24 * 60 * 60; // 7 days in seconds
//                identifyCookie.setMaxAge(cookieMaxAge);
//                passwordCookie.setMaxAge(cookieMaxAge);
//                rememberMeCookie.setMaxAge(cookieMaxAge);
//                response.addCookie(identifyCookie);
//                response.addCookie(passwordCookie);
//                response.addCookie(rememberMeCookie);
//            } else {
//                Cookie identifyCookie = new Cookie("identify", "");
//                Cookie passwordCookie = new Cookie("password", "");
//                Cookie rememberMeCookie = new Cookie("rememberMe", "");
//                identifyCookie.setMaxAge(0); // Xóa cookie
//                passwordCookie.setMaxAge(0); // Xóa cookie
//                rememberMeCookie.setMaxAge(0); // Xóa cookie
//                response.addCookie(identifyCookie);
//                response.addCookie(passwordCookie);
//                response.addCookie(rememberMeCookie);
//            }
//
//        } else {
//            String msg = "Invalid email or password";
//            session.setAttribute("message", msg);
//            response.sendRedirect("login?value=loginwithgoogle");
//        }
    }

    @Override
    public String getServletInfo() {
        return "User Login Servlet";
    }
}
