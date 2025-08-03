<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="content-area">
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">
            <span>📚</span>
            Books Overview
        </h1>
        <p class="page-subtitle">View your book inventory here.</p>
    </div>

    <!-- Dashboard Stats -->
    <div class="dashboard-stats">
        <div class="stat-card">
            <div class="stat-icon books">📚</div>
            <div class="stat-content">
                <h3 id="totalBooks">4</h3>
                <p>Total Books</p>
                <small class="stat-change neutral">Updated today</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon in-stock">✅</div>
            <div class="stat-content">
                <h3 id="inStock">2</h3>
                <p>In Stock</p>
                <small class="stat-change neutral">Updated today</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon low-stock">⚠️</div>
            <div class="stat-content">
                <h3 id="lowStock">1</h3>
                <p>Low Stock</p>
                <small class="stat-change neutral">Updated today</small>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon out-of-stock">❌</div>
            <div class="stat-content">
                <h3 id="outOfStock">1</h3>
                <p>Out of Stock</p>
                <small class="stat-change neutral">Updated today</small>
            </div>
        </div>
    </div>

    <!-- Search and Filter Section -->
    <div class="dashboard-section">
        <div class="search-filter-row">
            <div class="search-box">
                <span class="search-icon">🔍</span>
                <input type="text" class="search-input" placeholder="Search books by title, author, or ISBN..." id="searchInput">
            </div>
            <div class="filter-group">
                <select class="filter-select" id="categoryFilter">
                    <option value="">All Categories</option>
                    <option value="fiction">Fiction</option>
                    <option value="non-fiction">Non-Fiction</option>
                    <option value="science">Science</option>
                    <option value="technology">Technology</option>
                    <option value="history">History</option>
                    <option value="biography">Biography</option>
                </select>
                <select class="filter-select" id="stockFilter">
                    <option value="">All Stock</option>
                    <option value="in-stock">In Stock</option>
                    <option value="low-stock">Low Stock</option>
                    <option value="out-of-stock">Out of Stock</option>
                </select>
            </div>
        </div>

        <!-- Books Grid (moved here under filter section) -->
        <div class="books-grid" id="booksGrid">
            <div class="book-card">
                <img src="https://picsum.photos/200/300" alt="The Great Gatsby Cover" class="book-image">
                <div class="book-header">
                    <div>
                        <div class="book-title">The Great Gatsby</div>
                        <div class="book-author">by F. Scott Fitzgerald</div>
                    </div>
                    <div class="stock-badge stock-in">In Stock</div>
                </div>
                <div class="book-details">
                    <div class="detail-item">
                        <span class="detail-label">Category</span>
                        <span class="detail-value">Fiction</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Stock</span>
                        <span class="detail-value">15 units</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Publisher</span>
                        <span class="detail-value">Scribner</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Year</span>
                        <span class="detail-value">1925</span>
                    </div>
                </div>
                <div class="book-price">LKR 2500.00</div>
            </div>
            <div class="book-card">
                <img src="https://picsum.photos/200/300" alt="To Kill a Mockingbird Cover" class="book-image">
                <div class="book-header">
                    <div>
                        <div class="book-title">To Kill a Mockingbird</div>
                        <div class="book-author">by Harper Lee</div>
                    </div>
                    <div class="stock-badge stock-low">Low Stock</div>
                </div>
                <div class="book-details">
                    <div class="detail-item">
                        <span class="detail-label">Category</span>
                        <span class="detail-value">Fiction</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Stock</span>
                        <span class="detail-value">3 units</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Publisher</span>
                        <span class="detail-value">Harper Perennial</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Year</span>
                        <span class="detail-value">1960</span>
                    </div>
                </div>
                <div class="book-price">LKR 3200.00</div>
            </div>
            <div class="book-card">
                <img src="https://picsum.photos/200/300" alt="Clean Code Cover" class="book-image">
                <div class="book-header">
                    <div>
                        <div class="book-title">Clean Code</div>
                        <div class="book-author">by Robert C. Martin</div>
                    </div>
                    <div class="stock-badge stock-out">Out of Stock</div>
                </div>
                <div class="book-details">
                    <div class="detail-item">
                        <span class="detail-label">Category</span>
                        <span class="detail-value">Technology</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Stock</span>
                        <span class="detail-value">0 units</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Publisher</span>
                        <span class="detail-value">Prentice Hall</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Year</span>
                        <span class="detail-value">2008</span>
                    </div>
                </div>
                <div class="book-price">LKR 4500.00</div>
            </div>
            <div class="book-card">
                <img src="https://picsum.photos/200/300" alt="Sapiens Cover" class="book-image">
                <div class="book-header">
                    <div>
                        <div class="book-title">Sapiens</div>
                        <div class="book-author">by Yuval Noah Harari</div>
                    </div>
                    <div class="stock-badge stock-in">In Stock</div>
                </div>
                <div class="book-details">
                    <div class="detail-item">
                        <span class="detail-label">Category</span>
                        <span class="detail-value">History</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Stock</span>
                        <span class="detail-value">22 units</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Publisher</span>
                        <span class="detail-value">Harper</span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Year</span>
                        <span class="detail-value">2011</span>
                    </div>
                </div>
                <div class="book-price">LKR 3800.00</div>
            </div>
        </div>
    </div>

    <!-- FILTER FUNCTIONALITY -->
    <script>
        const searchInput = document.getElementById("searchInput");
        const categoryFilter = document.getElementById("categoryFilter");
        const stockFilter = document.getElementById("stockFilter");
        const booksGrid = document.getElementById("booksGrid");

        function filterBooks() {
            const searchTerm = searchInput.value.toLowerCase();
            const selectedCategory = categoryFilter.value.toLowerCase();
            const selectedStock = stockFilter.value.toLowerCase();
            const books = booksGrid.querySelectorAll(".book-card");

            books.forEach(book => {
                const title = book.querySelector(".book-title").textContent.toLowerCase();
                const author = book.querySelector(".book-author").textContent.toLowerCase();
                const category = book.querySelector(".detail-value").textContent.toLowerCase();
                const stockBadge = book.querySelector(".stock-badge").classList;
                const stockType = stockBadge.contains("stock-in") ? "in-stock" :
                                  stockBadge.contains("stock-low") ? "low-stock" :
                                  stockBadge.contains("stock-out") ? "out-of-stock" : "";

                const matchesSearch = title.includes(searchTerm) || author.includes(searchTerm);
                const matchesCategory = !selectedCategory || category === selectedCategory;
                const matchesStock = !selectedStock || stockType === selectedStock;

                book.style.display = (matchesSearch && matchesCategory && matchesStock) ? "" : "none";
            });
        }

        searchInput.addEventListener("input", filterBooks);
        categoryFilter.addEventListener("change", filterBooks);
        stockFilter.addEventListener("change", filterBooks);
    </script>
</div>

<style>
    /* Content Area */
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
        margin-bottom: 0rem;
    }

    .page-title {
        font-size: 2rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 0.5rem;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .page-subtitle {
        color: #666;
        font-size: 1.1rem;
    }

    /* Stats Section */
    .dashboard-stats {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 2rem;
        margin-bottom: 0rem;
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
        height: 150px;
        min-height: 150px;
        min-width: 280px;
    }

    .stat-card:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .stat-icon {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.1rem;
        color: white;
        flex-shrink: 0;
    }

    .stat-icon.books { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .stat-icon.in-stock { background: linear-gradient(135deg, #4CAF50, #45a049); }
    .stat-icon.low-stock { background: linear-gradient(135deg, #FF9800, #F57C00); }
    .stat-icon.out-of-stock { background: linear-gradient(135deg, #f44336, #d32f2f); }

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

    .stat-change.neutral { color: #666; }

    /* Search and Filter Section */
    .dashboard-section {
        background-color: white;
        border-radius: 12px;
        padding: 1.5rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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

    .search-filter-row {
        display: flex;
        gap: 20px;
        align-items: center;
        flex-wrap: wrap;
    }

    .search-box {
        flex: 1;
        min-width: 300px;
        position: relative;
    }

    .search-input {
        width: 100%;
        padding: 12px 16px 12px 45px;
        border: 2px solid #e1e5e9;
        border-radius: 8px;
        font-size: 16px;
        transition: border-color 0.3s ease;
        box-sizing: border-box;
    }

    .search-input:focus {
        outline: none;
        border-color: #667eea;
    }

    .search-icon {
        position: absolute;
        left: 15px;
        top: 50%;
        transform: translateY(-50%);
        color: #666;
    }

    .filter-group {
        display: flex;
        gap: 15px;
        align-items: center;
    }

    .filter-select {
        padding: 10px 15px;
        border: 2px solid #e1e5e9;
        border-radius: 8px;
        font-size: 14px;
        background: white;
        cursor: pointer;
    }

    /* Books Grid */
    .books-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); /* Reduced from 250px to 220px */
        gap: 15px; /* Reduced from 20px to 15px */
        margin-bottom: 30px;
        margin-top: 2rem;
    }

    .book-card {
        background: white;
        border-radius: 12px;
        padding: 15px; /* Reduced from 15px to 10px */
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden; /* Changed from hidden to auto to allow content to scroll if needed */
        height: 400px; /* Reduced from 400px to 350px */
    }

    .book-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0,0,0,0.15);
    }

    .book-image {
        width: 100%;
        height: 180px; /* Reduced from 200px to 180px */
        object-fit: cover;
        border-radius: 8px 8px 0 0;
        margin-bottom: 8px; /* Reduced from 10px to 8px */
    }

    .book-header {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        margin-bottom: 8px; /* Reduced from 10px to 8px */
    }

    .book-title {
        font-size: 14px; /* Reduced from 16px to 14px */
        font-weight: bold;
        color: #333;
        margin-bottom: 4px; /* Reduced from 5px to 4px */
        line-height: 1.3;
    }

    .book-author {
        color: #666;
        font-size: 10px; /* Reduced from 12px to 10px */
        margin-bottom: 8px;
    }

    .book-details {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 8px; /* Reduced from 8px to 6px */
        margin-bottom: 8px; /* Reduced from 10px to 8px */
        overflow: hidden; /* Ensure details don't overflow */
    }

    .detail-item {
        display: flex;
        flex-direction: column;
    }

    .detail-label {
        font-size: 9px; /* Reduced from 10px to 9px */
        color: #888;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    .detail-value {
        font-size: 12px; /* Reduced from 12px to 10px */
        font-weight: 500;
        color: #333;
        margin-top: 2px;
    }

    .book-price {
        font-size: 16px; /* Reduced from 18px to 16px */
        font-weight: bold;
        color: #2ecc71; /* Green color confirmed */
        text-align: center;
        margin: 8px 0; /* Reduced from 10px to 8px */
        display: block; /* Ensure it displays as a block element */
    }

    .stock-badge {
        display: inline-block;
        padding: 3px 10px; /* Reduced from 4px 12px to 3px 10px */
        border-radius: 20px;
        font-size: 9px; /* Reduced from 10px to 9px */
        font-weight: 500;
        text-transform: uppercase;
    }

    .stock-in {
        background: #d4edda;
        color: #155724;
    }

    .stock-low {
        background: #fff3cd;
        color: #856404;
    }

    .stock-out {
        background: #f8d7da;
        color: #721c24;
    }

    /* Modal Styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 1000;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.5);
    }

    .modal-content {
        background-color: white;
        margin: 5% auto;
        padding: 0;
        border-radius: 12px;
        width: 90%;
        max-width: 600px;
        max-height: 90vh;
        overflow-y: auto;
        box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    }

    .modal-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 20px;
        border-radius: 12px 12px 0 0;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .modal-title {
        font-size: 20px;
        font-weight: bold;
        margin: 0;
    }

    .close {
        color: white;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
        line-height: 1;
    }

    .close:hover {
        opacity: 0.7;
    }

    .modal-body {
        padding: 30px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-label {
        display: block;
        margin-bottom: 8px;
        font-weight: 500;
        color: #333;
    }

    .form-input {
        width: 100%;
        padding: 12px 16px;
        border: 2px solid #e1e5e9;
        border-radius: 8px;
        font-size: 16px;
        transition: border-color 0.3s ease;
        box-sizing: border-box;
    }

    .form-input:focus {
        outline: none;
        border-color: #667eea;
    }

    .form-textarea {
        min-height: 100px;
        resize: vertical;
    }

    .form-row {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 20px;
    }

    .form-actions {
        display: flex;
        gap: 15px;
        justify-content: flex-end;
        margin-top: 30px;
        padding-top: 20px;
        border-top: 1px solid #eee;
    }

    .btn {
        padding: 12px 24px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 500;
        transition: all 0.3s ease;
    }

    .btn-primary {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
    }

    .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
    }

    .btn-secondary {
        background: #6c757d;
        color: white;
    }

    .btn-secondary:hover {
        background: #5a6268;
    }

    /* Responsive Design */
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
        .books-grid {
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); /* Reduced from 200px to 180px */
        }
        .book-card {
            height: 350px; /* Reduced from 350px to 300px */
        }
    }

    @media (max-width: 900px) {
        .dashboard-stats {
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
            margin-bottom: 1rem;
        }
        .stat-card {
            min-width: 200px;
        }
        .search-filter-row {
            flex-direction: column;
            align-items: stretch;
        }
        .search-box {
            min-width: auto;
        }
        .books-grid {
            grid-template-columns: repeat(auto-fill, minmax(180px, 1fr)); /* Reduced from 180px to 160px */
        }
        .book-card {
            height: 320px; /* Reduced from 320px to 280px */
        }
    }

    @media (max-width: 600px) {
        .content-area {
            padding: 1rem;
        }
        .dashboard-stats {
            grid-template-columns: 1fr;
            margin-bottom: 0.5rem;
        }
        .books-grid {
            grid-template-columns: 1fr;
        }
        .book-card {
            height: 250px; /* Reduced from 250px to 220px */
        }
        .form-row {
            grid-template-columns: 1fr;
        }
        .section-header {
            flex-direction: column;
            align-items: flex-start;
            gap: 0.5rem;
        }
    }
</style>