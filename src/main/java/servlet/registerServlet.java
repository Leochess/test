package servlet;

import dao.DBdao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取用户注册信息
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 输入验证
        if (username == null || password == null || username.isEmpty() || password.isEmpty()) {
            request.setAttribute("error", "用户名和密码不能为空。");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // 数据库连接和插入操作
        try (Connection conn = DBdao.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("INSERT INTO users (username, password) VALUES (?, ?)")) {

            pstmt.setString(1, username);
            pstmt.setString(2, password);

            int result = pstmt.executeUpdate(); // 执行插入操作
            if (result > 0) {
                // 注册成功，重定向到登录页面
                response.sendRedirect("login.jsp");
            } else {
                // 注册失败，回到注册页面
                request.setAttribute("error", "注册失败，请重试。");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            // 处理数据库异常
            request.setAttribute("error", "数据库错误：" + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
