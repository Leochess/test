package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
//进行数据库的连接操作，创建了两个方法用于获取数据库的连接以及关闭

// 数据库操作类
public class DBdao {
    private static Properties prop = new Properties();

    static {
        try (InputStream in = DBdao.class.getClassLoader().getResourceAsStream("database.properties")) {
            if (in == null) {
                throw new IOException("无法找到数据库配置文件");
            }
            prop.load(in);
            // 获取驱动名并加载驱动
            Class.forName(prop.getProperty("db_driver"));
        } catch (IOException | ClassNotFoundException e) {
            throw new RuntimeException("数据库初始化失败: " + e.getMessage(), e);
        }
    }

    // 进行数据库的连接操作
    public static Connection getConnection() {
        String url = prop.getProperty("db_url");
        String name = prop.getProperty("db_name");
        String password = prop.getProperty("db_password");
        try {
            return DriverManager.getConnection(url, name, password);
        } catch (SQLException e) {
            throw new RuntimeException("获取数据库连接失败: " + e.getMessage(), e);
        }
    }

    // 数据库的关闭
    public static void close(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            System.err.println("关闭ResultSet失败: " + e.getMessage());
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("关闭Statement或Connection失败: " + e.getMessage());
            }
        }
    }
}

