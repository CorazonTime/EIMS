package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionManager {
    private static Connection connection;
    private static final String url = "jdbc:mysql://localhost:3306/EIMS?serverTimezone=UTC";
    private static final String user = "EimsDBA";
    private static final String password = "123456";

    // 获取数据库连接，如果连接已关闭或未初始化，则创建新的连接
    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try {
                // 加载 MySQL JDBC 驱动程序
                Class.forName("com.mysql.cj.jdbc.Driver");
                // 建立连接
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException e) {
                // 抛出自定义异常，通知调用者加载驱动程序失败
                throw new SQLException("Failed to load MySQL JDBC driver", e);
            } catch (SQLException e) {
                // 抛出自定义异常，通知调用者建立连接失败
                throw new SQLException("Failed to establish database connection", e);
            }
        }
        return connection;
    }

    // 关闭数据库连接
    public static void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                connection = null; // 置空连接对象
            }
        } catch (SQLException e) {
            // 关闭连接时发生异常，记录日志或输出错误信息
            System.err.println("Error while closing connection: " + e.getMessage());
        }
    }
}

