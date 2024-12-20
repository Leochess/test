package servlet;

import javax.servlet.http.Cookie;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.DBdao;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");

        // 从请求中获取用户名、密码及登录状态
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String loginCode = request.getParameter("loginCode");

        // 验证输入的用户名和密码不为空
        if (username == null || password == null) {
            request.setAttribute("errorMessage", "用户名和密码不能为空");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        try (Connection conn = DBdao.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?")) {

            stmt.setString(1, username);
            stmt.setString(2, password);

            // 执行查询
            try (ResultSet rs = stmt.executeQuery()) {
                // 判断用户是否存在
                if (rs.next()) {
                    // 登录成功，设置Cookie
                    Cookie cookies = new Cookie("account", username + "-" + password);
                    cookies.setMaxAge("1".equals(loginCode) ? 7 * 24 * 60 * 60 : 0); // 设置Cookie有效期
                    response.addCookie(cookies);
                    response.sendRedirect("welcome.jsp");
                } else {
                    // 登录失败，返回登录页面并提示错误信息
                    request.setAttribute("errorMessage", "用户名或密码错误");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "系统出现错误，请重试");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
