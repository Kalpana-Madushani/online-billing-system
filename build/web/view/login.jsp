<%-- 
    Document   : login
    Created on : Jul 29, 2025, 5:20:48 PM
    Author     : elegant media
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PAHANA Book Shop - Login</title>
    <!-- Link to external CSS files -->
    <link rel="stylesheet" type="text/css" href="css/login-styles.css">
    <link rel="stylesheet" type="text/css" href="css/footer-styles.css">
</head>
<body>
    <!-- Main login container -->
    <div class="login-container hide-inside-footer">
        <h1 class="system-title">PAHANA Book Store Management System</h1>
        <p class="login-title">Smart Billing. Better Bookshop.</p>
        
         <% 
            String error = request.getParameter("error");
            if ("InvalidCredentials".equals(error)) {
        %>
            <p style="color:red; text-align: center;">Invalid username or password.</p>
        <% 
            } 
        %>
        
        <form action="view/adminDashboard.jsp" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="un" placeholder="Enter your username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="pw" placeholder="Enter your password" required>
            </div>
            
            <div class="button-group">
                <a href="view/register.jsp" class="btn btn-secondary">Register</a>
<!--                 <a href="adminDashboard.jsp" class="btn btn-primary">Login</a>-->
                <input type="submit" value="Login" class="btn btn-primary">
            </div>
        </form>
    </div>
    
    <!-- Footer at bottom of background image -->
    <div class="footer-outside">
        <p>© 2024 PAHANA Book Shop Management System | All Rights Reserved | Version 1.0</p>
    </div>
</body>
</html>
