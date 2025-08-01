package controller;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import com.google.gson.Gson;
import java.util.*;

@WebServlet("/addUser")
public class UserServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        Gson gson = new Gson();
        
        try {
            // Read JSON from request body
            StringBuilder sb = new StringBuilder();
            BufferedReader reader = request.getReader();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            
            // Parse JSON
            User user = gson.fromJson(sb.toString(), User.class);
            
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            
            // Insert user
            String sql = "INSERT INTO users (username, password, role, status, created_date) VALUES (?, ?, ?, ?, CURDATE())";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.username);
            pstmt.setString(2, user.password); // Consider hashing the password
            pstmt.setString(3, user.role);
            pstmt.setString(4, user.status);
            
            int result = pstmt.executeUpdate();
            
            if (result > 0) {
                out.print("{\"success\": true, \"message\": \"User added successfully\"}");
            } else {
                out.print("{\"success\": false, \"message\": \"Failed to add user\"}");
            }
            
            conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            out.print("{\"success\": false, \"message\": \"Error: " + e.getMessage() + "\"}");
        }
    }
}

// Servlet to get all users
@WebServlet("/getUsers")
class GetUsersServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        Gson gson = new Gson();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            
            String sql = "SELECT * FROM users ORDER BY created_date DESC";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            List<User> users = new ArrayList<>();
            while (rs.next()) {
                User user = new User();
                user.id = rs.getString("id");
                user.username = rs.getString("username");
                user.role = rs.getString("role");
                user.status = rs.getString("status");
                user.created_date = rs.getString("created_date");
                users.add(user);
            }
            
            out.print(gson.toJson(users));
            conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            out.print("[]");
        }
    }
}

// Servlet to delete user
@WebServlet("/deleteUser")
class DeleteUserServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        Gson gson = new Gson();
        
        try {
            // Read JSON from request body
            StringBuilder sb = new StringBuilder();
            BufferedReader reader = request.getReader();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            
            // Parse JSON to get user ID
            Map<String, String> data = gson.fromJson(sb.toString(), Map.class);
            String userId = data.get("id");
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            
            String sql = "DELETE FROM users WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            
            int result = pstmt.executeUpdate();
            
            if (result > 0) {
                out.print("{\"success\": true, \"message\": \"User deleted successfully\"}");
            } else {
                out.print("{\"success\": false, \"message\": \"User not found\"}");
            }
            
            conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            out.print("{\"success\": false, \"message\": \"Error: " + e.getMessage() + "\"}");
        }
    }
}

// User class for JSON mapping
class User {
    public String id;
    public String username;
    public String password;
    public String role;
    public String status;
    public String created_date;
}