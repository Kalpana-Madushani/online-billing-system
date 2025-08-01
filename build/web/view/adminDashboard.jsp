<%-- 
    Document   : adminDashboard
    Created on : Jul 29, 2025, 10:18:31 PM
    Author     : elegant media
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookBase</title>
    <link rel="stylesheet" href="../css/home-style.css">
</head>
<body>
    <div class="container">
        <!-- Header -->
        <header class="header">
            <div class="header-left">
                <div class="logo">
                    <span class="logo-icon">🏠</span>
                    <span class="logo-text">BookBase</span>
                </div>
            </div>
            <div class="header-right">
                <div class="user-profile">
                    <span class="user-avatar">B</span>
                    <span class="username">Balogun</span>
                </div>
            </div>
        </header>
        
        <!-- Main Content Area -->
        <div class="main-content">
            <!-- Sidebar -->
            <aside class="sidebar">
                <nav class="sidebar-nav">
                    <ul class="nav-list">
                        <li class="nav-item active">
                            <a href="#" class="nav-link" data-tab="admin/dashboardTab.jsp">
                                <span class="nav-icon">🏠</span>
                                <span class="nav-text">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-tab="admin/usersTab.jsp">
                                <span class="nav-icon">👥</span>
                                <span class="nav-text">Users</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-tab="admin/book.jsp">
                                <span class="nav-icon">📚️</span>
                                <span class="nav-text">Books</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-tab="admin/generateInvoiceTab.jsp">
                                <span class="nav-icon">🧾</span>
                                <span class="nav-text">Invoice</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-tab="admin/salesReportTab.jsp">
                                <span class="nav-icon">📊</span>
                                <span class="nav-text">Sales Reports</span>
                            </a>
                        </li>
                    </ul>
                    
                    <div class="sidebar-divider"></div>
                    
                    <ul class="nav-list">
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-tab="admin/helpTab.jsp">
                                <span class="nav-icon">❓</span>
                                <span class="nav-text">Help</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-tab="admin/logoutTab.jsp">
                                <span class="nav-icon">🚪</span>
                                <span class="nav-text">Logout</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </aside>
            
            <!-- Body Content -->
            <div id="body-container"></div>
        </div>
    </div>

    <script>
        // Function to load HTML content
        function loadHTML(file, elementId) {
            fetch(file)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`Failed to load ${file}: ${response.statusText}`);
                    }
                    return response.text();
                })
                .then(data => {
                    const targetElement = document.getElementById(elementId);
                    targetElement.innerHTML = data;

                    // Re-execute scripts in the loaded content
                    const scripts = targetElement.getElementsByTagName('script');
                    for (let script of scripts) {
                        const newScript = document.createElement('script');
                        newScript.text = script.textContent;
                        targetElement.appendChild(newScript);
                        newScript.remove();
                    }
                })
                .catch(error => {
                    console.error('Error loading HTML:', error);
                    document.getElementById(elementId).innerHTML = '<p>Error loading content. Please try again.</p>';
                });
        }

        // Function to set active tab
        function setActiveTab(element) {
            document.querySelectorAll('.nav-item').forEach(item => {
                item.classList.remove('active');
            });
            element.parentElement.classList.add('active');
        }

        // Load default content and set up event listeners
        document.addEventListener('DOMContentLoaded', function() {
            loadHTML('tabs/dashboardTab.jsp', 'body-container');
            document.querySelectorAll('.nav-link').forEach(link => {
                link.addEventListener('click', function(event) {
                    event.preventDefault();
                    const tabFile = this.getAttribute('data-tab');
                    loadHTML(tabFile, 'body-container');
                    setActiveTab(this);
                });
            });
        });
    </script>
</body>
</html>