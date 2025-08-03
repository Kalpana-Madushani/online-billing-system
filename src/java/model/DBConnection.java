package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/pahanaedu"; // Change DB name
    private static final String USER = "root"; // Your DB user
    private static final String PASS = ""; // Your DB password

    public static Connection getInstance() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure MySQL JDBC driver is loaded
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
