<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="controller.MonthlySales" %>
<%
    List<MonthlySales> sales = (List<MonthlySales>) request.getAttribute("monthlySalesData");
    String salesJson = new Gson().toJson(sales);
%>

<!-- Sales Report Content -->
<div class="content-area">
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">Sales Report</h1>
        <p class="page-subtitle">Detailed report of book sales, revenue and performance metrics.</p>
    </div>

    <!-- Sales Summary Stats -->
    <div class="dashboard-stats">
        <div class="stat-card">
            <div class="stat-icon revenue">💵</div>
            <div class="stat-content">
                <h3 id="monthlyRevenue">$0</h3>
                <p>Monthly Revenue</p>
                <small class="stat-change positive">+10% from last month</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon sales">📈</div>
            <div class="stat-content">
                <h3 id="booksSold">0</h3>
                <p>Total Books Sold</p>
                <small class="stat-change positive">+5% increase</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon books">🏷️</div>
            <div class="stat-content">
                <h3 id="topCategory">Fiction</h3>
                <p>Top Category</p>
                <small class="stat-change neutral">Based on units sold</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon users">👤</div>
            <div class="stat-content">
                <h3 id="topCustomer">John D.</h3>
                <p>Top Customer</p>
                <small class="stat-change positive">Spent $1,200 this month</small>
            </div>
        </div>
    </div>

    <!-- Sales Chart and Highlights -->
    <div class="dashboard-grid">
        <!-- Monthly Sales Chart -->
        <div class="dashboard-section full-width">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">📊</span>Monthly Sales Chart</h2>
            </div>
            <canvas id="salesChart" height="100"></canvas>
        </div>

        <!-- Best Selling Books -->
        <div class="dashboard-section">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">🔥</span>Best Selling Books</h2>
            </div>
            <div class="recent-sales-list">
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📕</div>
                        <div class="book-info">
                            <h4>Atomic Habits</h4>
                            <p>James Clear</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$25.00</span>
                        <span class="sale-time">120 sold</span>
                    </div>
                </div>
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📙</div>
                        <div class="book-info">
                            <h4>Think and Grow Rich</h4>
                            <p>Napoleon Hill</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$18.00</span>
                        <span class="sale-time">98 sold</span>
                    </div>
                </div>
                <div class="sale-item">
                    <div class="sale-book">
                        <div class="book-cover">📘</div>
                        <div class="book-info">
                            <h4>Rich Dad Poor Dad</h4>
                            <p>Robert Kiyosaki</p>
                        </div>
                    </div>
                    <div class="sale-details">
                        <span class="sale-price">$22.00</span>
                        <span class="sale-time">87 sold</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Category-wise Sales -->
        <div class="dashboard-section">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">📚</span>Category-wise Sales</h2>
            </div>
            <ul class="category-list">
                <li><strong>Fiction:</strong> 320 units</li>
                <li><strong>Non-Fiction:</strong> 280 units</li>
                <li><strong>Science:</strong> 150 units</li>
                <li><strong>Children:</strong> 100 units</li>
            </ul>
        </div>
    </div>
</div>

<style>
    .content-area {
        max-width: 100%;
        margin: 0 auto;
        padding: 2rem;
        background-color: #f8f9fa;
        display: flex;
        flex-direction: column;
        gap: 2rem;
            min-width: 80rem;
            width: 100%;
    }

    .page-header {
        margin-bottom: 2rem;
    }

    .page-title {
        font-size: 2rem;
        font-weight: 600;
        color: #333;
    }

    .page-subtitle {
        font-size: 1.1rem;
        color: #666;
    }

    .dashboard-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 2rem;
    }

    .stat-card {
        background: white;
        border-radius: 12px;
        padding: 1.5rem;
        display: flex;
        align-items: center;
        gap: 1.5rem;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
        transition: 0.3s ease;
    }

    .stat-card:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
    }

    .stat-icon {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        font-size: 1.8rem;
        color: white;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-shrink: 0;
    }

    .stat-icon.revenue { background: linear-gradient(135deg, #4CAF50, #388E3C); }
    .stat-icon.sales { background: linear-gradient(135deg, #FF9800, #F57C00); }
    .stat-icon.books { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .stat-icon.users { background: linear-gradient(135deg, #AB47BC, #8E24AA); }

    .stat-content h3 {
        margin: 0;
        font-size: 1.8rem;
        font-weight: bold;
        color: #333;
    }

    .stat-content p {
        margin: 0.3rem 0 0;
        color: #777;
        font-size: 0.95rem;
    }

    .stat-change {
        font-size: 0.8rem;
        margin-top: 0.3rem;
        display: block;
    }

    .stat-change.positive { color: #4CAF50; }
    .stat-change.negative { color: #f44336; }
    .stat-change.neutral { color: #777; }

    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
        gap: 2rem;
    }

    .dashboard-section {
        background-color: #fff;
        border-radius: 12px;
        padding: 1.5rem;
        box-shadow: 0 1px 4px rgba(0,0,0,0.1);
    }

    .dashboard-section.full-width {
        grid-column: 1 / -1;
    }

    .section-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 1rem;
        border-bottom: 1px solid #eee;
        padding-bottom: 0.5rem;
    }

    .section-title {
        font-size: 1.25rem;
        font-weight: 600;
        color: #333;
        display: flex;
        align-items: center;
        gap: 0.5rem;
    }

    .section-icon {
        font-size: 1.2rem;
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
        background-color: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
    }

    .sale-book {
        display: flex;
        gap: 1rem;
        align-items: center;
    }

    .book-cover {
        width: 40px;
        height: 40px;
        border-radius: 6px;
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.2rem;
    }

    .book-info h4 {
        margin: 0;
        font-size: 1rem;
        color: #333;
    }

    .book-info p {
        margin: 0;
        font-size: 0.85rem;
        color: #777;
    }

    .sale-details {
        text-align: right;
    }

    .sale-price {
        font-weight: bold;
        font-size: 1rem;
        color: #4CAF50;
    }

    .sale-time {
        font-size: 0.8rem;
        color: #777;
    }

    .category-list {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .category-list li {
        font-size: 0.95rem;
        color: #555;
        margin-bottom: 0.5rem;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .dashboard-grid {
            grid-template-columns: 1fr;
        }
        .dashboard-stats {
            grid-template-columns: 1fr 1fr;
        }
    }

    @media (max-width: 480px) {
        .dashboard-stats {
            grid-template-columns: 1fr;
        }
    }
</style>


<!-- Add this to your scripts -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    // Sample sales chart (can replace with real data later)
    const ctx = document.getElementById('salesChart').getContext('2d');
    const salesChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
            datasets: [{
                label: 'Revenue ($)',
                data: [1200, 1900, 3000, 2500, 3400, 4200, 3800],
                backgroundColor: 'rgba(181, 149, 216, 0.2)',
                borderColor: '#B595D8',
                borderWidth: 2,
                fill: true,
                tension: 0.3
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { display: false },
            },
            scales: {
                y: { beginAtZero: true }
            }
        }
    });

    // You can also use your dashboard data update logic here if needed
</script>
