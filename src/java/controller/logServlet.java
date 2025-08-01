package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

import model.DBConnection;

@WebServlet("/logServlet")
public class logServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("un");
        String password = request.getParameter("pw");

        boolean loginSuccessful = false;

        try (Connection conn = DBConnection.getInstance()) {
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                loginSuccessful = true;

                // Optionally store user info in session
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("username"));
                session.setAttribute("userRole", rs.getString("userRole")); // You can use this to redirect by role
            }

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        if (loginSuccessful) {
            response.sendRedirect("home.html");
        } else {
            response.sendRedirect("index.html?error=InvalidCredentials");
        }
    }
}
