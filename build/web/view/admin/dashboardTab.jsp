<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Dashboard Content -->
<div class="content-area">
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">Dashboard Overview</h1>
        <p class="page-subtitle">Welcome back! Here's what's happening in your bookshop.</p>
    </div>

    <!-- Dashboard Stats - Forced Horizontal Layout -->
    <div class="dashboard-stats">
        <div class="stat-card">
            <div class="stat-icon revenue">💰</div>
            <div class="stat-content">
                <h3 id="totalRevenue">$0</h3>
                <p>Total Revenue</p>
                <small class="stat-change positive">+12% from last month</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon books">📚</div>
            <div class="stat-content">
                <h3 id="totalBooks">0</h3>
                <p>Books in Stock</p>
                <small class="stat-change neutral">Updated today</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon sales">📊</div>
            <div class="stat-content">
                <h3 id="totalSales">0</h3>
                <p>Sales This Month</p>
                <small class="stat-change positive">+8% from last month</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon users">👥</div>
            <div class="stat-content">
                <h3 id="totalUsers">0</h3>
                <p>Active Users</p>
                <small class="stat-change positive">+3 new users</small>
            </div>
        </div>
    </div>

    <!-- Dashboard Content Grid -->
    <div class="dashboard-grid">
        <!-- Recent Sales Section -->
        <div class="dashboard-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">🔥</span>
                    Recent Sales
                </h2>
                <a href="#" class="view-all-link">View All</a>
            </div>
            <div class="recent-sales-list">
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📖</div>
                        <div class="book-info">
                            <h4>The Great Gatsby</h4>
                            <p>F. Scott Fitzgerald</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$24.99</span>
                        <span class="sale-time">2 hours ago</span>
                    </div>
                </div>
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📚</div>
                        <div class="book-info">
                            <h4>To Kill a Mockingbird</h4>
                            <p>Harper Lee</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$19.99</span>
                        <span class="sale-time">4 hours ago</span>
                    </div>
                </div>
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📘</div>
                        <div class="book-info">
                            <h4>1984</h4>
                            <p>George Orwell</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$22.50</span>
                        <span class="sale-time">6 hours ago</span>
                    </div>
                </div>
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📗</div>
                        <div class="book-info">
                            <h4>Pride and Prejudice</h4>
                            <p>Jane Austen</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$18.99</span>
                        <span class="sale-time">1 day ago</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Low Stock Alert Section -->
        <div class="dashboard-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">⚠️</span>
                    Low Stock Alert
                </h2>
                <a href="#" class="view-all-link">Manage Stock</a>
            </div>
            <div class="low-stock-list">
                <div class="stock-item">
                    <div class="stock-info">
                        <h4>The Catcher in the Rye</h4>
                        <p>J.D. Salinger</p>
                    </div>
                    <div class="stock-level critical">
                        <span class="stock-count">2 left</span>
                        <div class="stock-bar">
                            <div class="stock-fill" style="width: 10%"></div>
                        </div>
                    </div>
                </div>
                <div class="stock-item">
                    <div class="stock-info">
                        <h4>Lord of the Flies</h4>
                        <p>William Golding</p>
                    </div>
                    <div class="stock-level warning">
                        <span class="stock-count">5 left</span>
                        <div class="stock-bar">
                            <div class="stock-fill" style="width: 25%"></div>
                        </div>
                    </div>
                </div>
                <div class="stock-item">
                    <div class="stock-info">
                        <h4>Brave New World</h4>
                        <p>Aldous Huxley</p>
                    </div>
                    <div class="stock-level warning">
                        <span class="stock-count">8 left</span>
                        <div class="stock-bar">
                            <div class="stock-fill" style="width: 40%"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Today's Summary Section -->
        <div class="dashboard-section full-width">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">📅</span>
                    Today's Summary
                </h2>
                <span class="current-date" id="currentDate"></span>
            </div>
            <div class="summary-grid">
                <div class="summary-item">
                    <div class="summary-value" id="todaySales">0</div>
                    <div class="summary-label">Sales Today</div>
                </div>
                <div class="summary-item">
                    <div class="summary-value" id="todayRevenue">$0</div>
                    <div class="summary-label">Revenue Today</div>
                </div>
                <div class="summary-item">
                    <div class="summary-value" id="todayCustomers">0</div>
                    <div class="summary-label">New Customers</div>
                </div>
                <div class="summary-item">
                    <div class="summary-value" id="pendingOrders">0</div>
                    <div class="summary-label">Pending Orders</div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Dashboard specific styles */
    .content-area {
        max-width: 100%;
        margin: 0 auto;
        flex: 1;
        padding: 2rem;
        overflow-y: auto;
        background-color: #f8f9fa;
        display: flex;
        flex-direction: column;
        gap: 2rem;
        width: 100%;
    }

    .page-header {
        margin-bottom: 2rem;
    }

    .page-title {
        font-size: 2rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 0.5rem;
    }

    .page-subtitle {
        color: #666;
        font-size: 1.1rem;
    }

    /* Enhanced horizontal stats layout with increased width */
    .dashboard-stats {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 2rem;
        margin-bottom: 2rem;
        width: 100%;
    }

    .stat-card {
        background-color: white;
        border-radius: 12px;
        padding: 2rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        display: flex;
        align-items: center;
        gap: 1.5rem;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        min-height: 140px;
        min-width: 280px;
    }

    .stat-card:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .stat-icon {
        width: 70px;
        height: 70px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.8rem;
        color: white;
        flex-shrink: 0;
    }

    .stat-icon.revenue { background: linear-gradient(135deg, #4CAF50, #45a049); }
    .stat-icon.books { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .stat-icon.sales { background: linear-gradient(135deg, #FF9800, #F57C00); }
    .stat-icon.users { background: linear-gradient(135deg, #B595D8, #C8A8E0); }

    .stat-content {
        flex: 1;
        min-width: 0;
    }

    .stat-content h3 {
        font-size: 2.2rem;
        font-weight: bold;
        color: #333;
        margin: 0;
    }

    .stat-content p {
        color: #666;
        margin: 0;
        font-size: 1rem;
        margin-top: 0.25rem;
    }

    .stat-change {
        font-size: 0.85rem;
        margin-top: 0.5rem;
        display: block;
    }

    .stat-change.positive { color: #4CAF50; }
    .stat-change.negative { color: #f44336; }
    .stat-change.neutral { color: #666; }

    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
        gap: 2rem;
        width: 100%;
    }

    .dashboard-section {
        background-color: white;
        border-radius: 12px;
        padding: 1.5rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .dashboard-section.full-width {
        grid-column: 1 / -1;
    }

    .section-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 1.5rem;
        padding-bottom: 0.5rem;
        border-bottom: 1px solid #E8D5F2;
    }

    .section-title {
        font-size: 1.25rem;
        font-weight: 600;
        color: #333;
        display: flex;
        align-items: center;
        gap: 0.5rem;
        margin: 0;
    }

    .section-icon {
        font-size: 1.2rem;
    }

    .view-all-link {
        color: #B595D8;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: 500;
        transition: color 0.3s ease;
    }

    .view-all-link:hover {
        color: #C8A8E0;
    }

    .recent-sales-list {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    .sale-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem;
        background-color: #f8f9fa;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }

    .sale-item:hover {
        background-color: #E8D5F2;
    }

    .sale-book {
        display: flex;
        align-items: center;
        gap: 1rem;
    }

    .book-cover {
        width: 40px;
        height: 40px;
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        border-radius: 6px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.2rem;
    }

    .book-info h4 {
        margin: 0;
        font-size: 0.95rem;
        color: #333;
    }

    .book-info p {
        margin: 0;
        font-size: 0.8rem;
        color: #666;
    }

    .sale-details {
        text-align: right;
    }

    .sale-price {
        font-weight: 600;
        color: #4CAF50;
        display: block;
        font-size: 1rem;
    }

    .sale-time {
        font-size: 0.8rem;
        color: #666;
    }

    .low-stock-list {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    .stock-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem;
        background-color: #f8f9fa;
        border-radius: 8px;
    }

    .stock-info h4 {
        margin: 0;
        font-size: 0.95rem;
        color: #333;
    }

    .stock-info p {
        margin: 0;
        font-size: 0.8rem;
        color: #666;
    }

    .stock-level {
        text-align: right;
        min-width: 100px;
    }

    .stock-count {
        font-size: 0.9rem;
        font-weight: 500;
        display: block;
        margin-bottom: 0.25rem;
    }

    .stock-level.critical .stock-count { color: #f44336; }
    .stock-level.warning .stock-count { color: #FF9800; }

    .stock-bar {
        width: 60px;
        height: 4px;
        background-color: #E8D5F2;
        border-radius: 2px;
        overflow: hidden;
    }

    .stock-fill {
        height: 100%;
        background: linear-gradient(135deg, #f44336, #FF9800);
        transition: width 0.3s ease;
    }

    .current-date {
        color: #666;
        font-size: 0.9rem;
        font-weight: 500;
    }

    .summary-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
        gap: 1.5rem;
        margin-top: 1rem;
    }

    .summary-item {
        text-align: center;
        padding: 1.5rem;
        background-color: #f8f9fa;
        border-radius: 8px;
    }

    .summary-value {
        font-size: 1.8rem;
        font-weight: bold;
        color: #B595D8;
        margin-bottom: 0.5rem;
    }

    .summary-label {
        font-size: 0.9rem;
        color: #666;
    }

    /* Responsive Design - Maintain horizontal layout as much as possible */
    @media (max-width: 1200px) {
        .dashboard-stats {
            grid-template-columns: repeat(4, 1fr);
            gap: 1.5rem;
        }
        
        .stat-card {
            padding: 1.5rem;
            min-height: 120px;
            min-width: 240px;
        }
        
        .stat-content h3 {
            font-size: 1.8rem;
        }
    }

    @media (max-width: 900px) {
        .dashboard-stats {
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
        }
        
        .stat-card {
            min-width: 200px;
        }
    }

    @media (max-width: 600px) {
        .content-area {
            padding: 1rem;
        }
        
        .dashboard-stats {
            grid-template-columns: 1fr;
        }
        
        .dashboard-grid {
            grid-template-columns: 1fr;
        }
        
        .summary-grid {
            grid-template-columns: repeat(2, 1fr);
        }
        
        .section-header {
            flex-direction: column;
            align-items: flex-start;
            gap: 0.5rem;
        }
    }
</style>

<script>
    // Dashboard initialization and functionality - Fixed for JSP
    function initializeDashboard() {
        try {
            // Set current date for Today's Summary
            const now = new Date();
            const currentDate = now.toLocaleDateString('en-US', {
                weekday: 'long',
                year: 'numeric',
                month: 'long',
                day: 'numeric'
            });
            
            // Set the date in Today's Summary section
            const currentDateElement = document.getElementById('currentDate');
            if (currentDateElement) {
                currentDateElement.textContent = currentDate;
            } else {
                console.log('Date element not found');
            }
            
            // Load dashboard data
            loadDashboardData();
            
            // Set up auto-refresh for live data (every 30 seconds)
            setInterval(loadDashboardData, 30000);
            
        } catch (error) {
            console.error('Error initializing dashboard:', error);
        }
    }

    function loadDashboardData() {
        // Simulate API calls - replace with actual JSP/servlet calls
        updateStatCards();
        updateTodaySummary();
    }

    function updateStatCards() {
        // Simulate data - replace with actual data from your database
        const stats = {
            totalRevenue: 15248.50,
            totalBooks: 1247,
            totalSales: 89,
            totalUsers: 156
        };
        
        // Animate number updates
        animateValue('totalRevenue', 0, stats.totalRevenue, 1500, true);
        animateValue('totalBooks', 0, stats.totalBooks, 1200);
        animateValue('totalSales', 0, stats.totalSales, 1000);
        animateValue('totalUsers', 0, stats.totalUsers, 1300);
    }

    function updateTodaySummary() {
        // Simulate today's data
        const todayStats = {
            sales: 12,
            revenue: 345.75,
            customers: 8,
            pendingOrders: 3
        };
        
        animateValue('todaySales', 0, todayStats.sales, 800);
        animateValue('todayRevenue', 0, todayStats.revenue, 800, true);
        animateValue('todayCustomers', 0, todayStats.customers, 800);
        animateValue('pendingOrders', 0, todayStats.pendingOrders, 800);
    }

    function animateValue(elementId, start, end, duration, isCurrency = false) {
        const element = document.getElementById(elementId);
        if (!element) return;
        
        const startTime = Date.now();
        const startValue = start;
        const endValue = end;
        
        function updateValue() {
            const elapsed = Date.now() - startTime;
            const progress = Math.min(elapsed / duration, 1);
            
            // Easing function for smooth animation
            const easeOutQuart = 1 - Math.pow(1 - progress, 4);
            const currentValue = startValue + (endValue - startValue) * easeOutQuart;
            
            if (isCurrency) {
                element.textContent = '$' + Math.round(currentValue).toLocaleString();
            } else {
                element.textContent = Math.round(currentValue).toLocaleString();
            }
            
            if (progress < 1) {
                requestAnimationFrame(updateValue);
            }
        }
        
        requestAnimationFrame(updateValue);
    }

    // Initialize when DOM is ready or when page loads
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initializeDashboard);
    } else {
        // DOM is already loaded
        initializeDashboard();
    }

    // Also initialize when window loads (fallback)
    window.addEventListener('load', function() {
        setTimeout(initializeDashboard, 100);
    });

    // For JSP dynamic loading, also call directly
    setTimeout(function() {
        if (document.getElementById('currentDate') && 
            document.getElementById('currentDate').textContent.trim() === '') {
            initializeDashboard();
        }
    }, 500);
</script>