package util;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

public class Authenticate implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {
        // Khởi tạo filter nếu cần thiết
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false); // Không tự động tạo session mới
        User user = (session != null) ? (User) session.getAttribute("USER") : null;

        String uri = httpRequest.getRequestURI();
        String contextPath = httpRequest.getContextPath();

        // Xác thực cho các đường dẫn cần đăng nhập
        if (uri.startsWith(contextPath + "/quiz")) {

            if (user == null) {
                // Lưu lại URL hiện tại
                String referer = httpRequest.getHeader("referer");
                if (referer != null && !referer.isEmpty()) {
                    httpRequest.getSession(true).setAttribute("redirectURL", referer);
                }
                // Chuyển hướng đến trang đăng nhập
                httpResponse.sendRedirect(httpResponse.encodeRedirectURL(contextPath + "/login?value=login"));
                return;
            }
        }

        // Kiểm tra nếu người dùng đã đăng nhập và cố truy cập vào trang login hoặc register
        if ((uri.equals(contextPath + "/login") || uri.equals(contextPath + "/register")) && user != null) {
            // Chuyển hướng đến trang chủ
            httpResponse.sendRedirect(contextPath + "/home");
            return;
        }

        // Tiếp tục với các filter khác hoặc servlet đích
        chain.doFilter(request, response);
    }

    public void destroy() {
        // Hủy filter nếu cần thiết
    }
}
