package controller;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import com.google.gson.Gson;

@WebServlet("/sales")
public class SalesServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<MonthlySales> monthlySalesData = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Example query: total sales per month (adjust table/column names)
            String sql = "SELECT MONTHNAME(sale_date) AS month, SUM(total_amount) AS sales " +
                         "FROM sales GROUP BY MONTH(sale_date) ORDER BY MONTH(sale_date)";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String month = rs.getString("month");
                int sales = rs.getInt("sales");
                monthlySalesData.add(new MonthlySales(month, sales));
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            // Add fallback dummy data if needed
            monthlySalesData.add(new MonthlySales("January", 100));
            monthlySalesData.add(new MonthlySales("February", 150));
            monthlySalesData.add(new MonthlySales("March", 120));
        }

        request.setAttribute("monthlySalesData", monthlySalesData);
        request.getRequestDispatcher("view/admin/salesReport.jsp").forward(request, response);
    }
}