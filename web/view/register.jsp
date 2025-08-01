
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PAHANA Book Shop - Register</title>
    <link rel="stylesheet" type="text/css" href="css/login-styles.css">
    <link rel="stylesheet" type="text/css" href="css/footer-styles.css">
</head>
<body>
    <!-- Wrapper to control content and footer layout -->
    <div class="content-wrapper">
        <div class="login-container">
            <h1 class="system-title">PAHANA Book Store Management System</h1>
            <p class="login-title">Create Your Account. Join Our Community.</p>
            
            <form action="registerServlet" method="post">
                <div class="form-group">
                    <label for="fullname">Full Name</label>
                    <input type="text" id="fullname" name="fullname" placeholder="Enter your full name" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email address" required>
                </div>
                
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="Choose a username" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Create a password" required>
                </div>
                
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
                </div>
                
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
                </div>
                
                <div class="button-group">
                    <a href="login.jsp" class="btn btn-secondary">Back to Login</a>
                    <a href="home.html" class="btn btn-primary">Register</a>
<!--                    <input type="submit" value="Register" class="btn btn-primary">-->
                </div>
            </form>
        </div>
    </div>
    
    <!-- Footer -->
    <div class="footer-outside">
        <p>© 2024 PAHANA Book Shop Management System | All Rights Reserved | Version 1.0</p>
    </div>
</body>
</html>
