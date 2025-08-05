<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="content-area">
    <div class="tab-nav">
            <button class="tab-button active" data-tab="books-overview">Books Overview</button>
            <button class="tab-button" data-tab="add-book">Add New Book</button>
        </div>
    
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">
            <span>📚</span>
            Books Overview
        </h1>
        <p class="page-subtitle">View your book inventory here.</p>
    </div>

    <div class="tab-content">
            <!-- Books Overview Tab -->
            <div id="books-overview" class="tab-pane active">
                
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
            </div>
    <!-- HIGHLIGHT: Add New Book Tab -->
            <div id="add-book" class="tab-pane">
                <section class="add-book-section">
            <h2 class="form-title">
                <span class="section-icon">📚</span>
                Add New Book
            </h2>
            <form id="addBookForm">
                <div class="form-grid">
                    <div class="form-group">
                        <label class="form-label" for="bookTitle">Book Title</label>
                        <input type="text" id="bookTitle" class="form-input" placeholder="Enter book title" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="author">Author</label>
                        <input type="text" id="author" class="form-input" placeholder="Enter author name" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="isbn">ISBN</label>
                        <input type="text" id="isbn" class="form-input" placeholder="Enter ISBN number" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="category">Category</label>
                        <select id="category" class="form-select" required>
                            <option value="">Select Category</option>
                            <option value="fiction">Fiction</option>
                            <option value="non-fiction">Non-Fiction</option>
                            <option value="science">Science</option>
                            <option value="history">History</option>
                            <option value="biography">Biography</option>
                            <option value="children">Children's Books</option>
                            <option value="textbook">Textbook</option>
                            <option value="reference">Reference</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="publisher">Publisher</label>
                        <input type="text" id="publisher" class="form-input" placeholder="Enter publisher name" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="publishYear">Publication Year</label>
                        <input type="number" id="publishYear" class="form-input" placeholder="Enter year" min="1800" max="2025" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="price">Price (LKR)</label>
                        <input type="number" id="price" class="form-input" placeholder="Enter price" min="0" step="0.01" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="quantity">Stock Quantity</label>
                        <input type="number" id="quantity" class="form-input" placeholder="Enter quantity" min="0" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="description">Description</label>
                        <textarea id="description" class="form-textarea" placeholder="Enter book description" rows="3"></textarea>
                    </div>
                </div>
                <button type="submit" class="add-book-btn">
                    Add Book
                </button>
            </form>
        </section>

        <!-- Books Table -->
        <section class="books-table-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">📖</span>
                    All Books
                </h2>
                <div class="header-controls">
                    <select class="filter-select" id="categoryFilter">
                        <option value="">All Categories</option>
                        <option value="fiction">Fiction</option>
                        <option value="non-fiction">Non-Fiction</option>
                        <option value="science">Science</option>
                        <option value="history">History</option>
                        <option value="biography">Biography</option>
                        <option value="children">Children's Books</option>
                        <option value="textbook">Textbook</option>
                        <option value="reference">Reference</option>
                    </select>
                    <input type="text" class="search-box" placeholder="Search books..." id="searchBox">
                </div>
            </div>
            <div class="table-container">
                <table class="books-table" id="booksTable">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>ISBN</th>
                            <th>Category</th>
                            <th>Price (LKR)</th>
                            <th>Stock</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample data - remove in production -->
                       
                        <tr>
                            <td>B001</td>
                            <td>The Great Gatsby</td>
                            <td>F. Scott Fitzgerald</td>
                            <td>978-0-7432-7356-5</td>
                            <td><span class="category-badge category-fiction">Fiction</span></td>
                            <td>Rs. 1,250.00</td>
                            <td>25</td>
                            <td><span class="status-in-stock">In Stock</span></td>
                            <td>
                                <div class="actions">
                                    <button class="action-btn edit-btn">Edit</button>
                                    <button class="action-btn delete-btn">Delete</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
            </div>
        </div>
    </div>

    <!-- FILTER FUNCTIONALITY -->
    <script>
        const searchInput = document.getElementById("searchInput");
        const categoryFilter = document.getElementById("categoryFilter");
        const stockFilter = document.getElementById("stockFilter");
        const booksGrid = document.getElementById("booksGrid");
        
        const tabButtons = document.querySelectorAll(".tab-button");
        const tabPanes = document.querySelectorAll(".tab-pane");

        tabButtons.forEach(button => {
            button.addEventListener("click", function() {
                const tabId = this.getAttribute("data-tab");

                tabButtons.forEach(btn => btn.classList.remove("active"));
                this.classList.add("active");

                tabPanes.forEach(pane => {
                    pane.classList.toggle("active", pane.id === tabId);
                });
            });
        });
        
        addBookBtn.addEventListener("click", function() {
            // Switch to Add New Book tab
            tabButtons.forEach(btn => btn.classList.remove("active"));
            document.querySelector(`.tab-button[data-tab="add-book"]`).classList.add("active");
            tabPanes.forEach(pane => {
                pane.classList.toggle("active", pane.id === "add-book");
            });
        });
        
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
    
/*    tab styles*/
     .tab-nav {
        display: flex;
        gap: 10px;
        margin-bottom: 20px;
        border-bottom: 2px solid #e1e5e9;
    }

    .tab-button {
        padding: 10px 20px;
        border: none;
        background: none;
        font-size: 16px;
        font-weight: 500;
        color: #666;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    .tab-button:hover {
        color: #333;
    }

    .tab-button.active {
        color: #333;
        border-bottom: 2px solid #667eea;
    }

    .tab-content {
        background: white;
        border-radius: 12px;
        padding: 1.5rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .tab-pane {
        display: none;
    }

    .tab-pane.active {
        display: block;
    }

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
    
    /* Add book section styles */
    .add-book-section {
        background-color: white;
        border-radius: 12px;
        padding: 1rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        max-width: 100%;
        flex: 0 0 auto;
        width: 100%;
    }

    .form-title {
        font-size: 1.25rem;
        font-weight: 600;
        color: #333;
        display: flex;
        align-items: center;
        gap: 0.5rem;
        margin-bottom: 1.5rem;
        padding-bottom: 0.5rem;
        border-bottom: 1px solid #E8D5F2;
    }

    .section-icon {
        font-size: 1.2rem;
    }

    .form-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 1rem;
        margin-bottom: 1.5rem;
    }

    .form-group {
        display: flex;
        flex-direction: column;
        gap: 0.3rem;
    }

    .form-group:nth-child(1),
    .form-group:nth-child(9) {
        grid-column: 1 / -1;
    }

    .form-label {
        font-size: 0.9rem;
        font-weight: 500;
        color: #333;
    }

    .form-input, .form-select, .form-textarea {
        padding: 0.75rem;
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        font-size: 0.95rem;
        color: #333;
        background-color: #f8f9fa;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
        font-family: inherit;
    }

    .form-textarea {
        resize: vertical;
        min-height: 80px;
    }

    .form-input:focus, .form-select:focus, .form-textarea:focus {
        outline: none;
        border-color: #B595D8;
        box-shadow: 0 0 0 3px rgba(181, 149, 216, 0.2);
    }

    .add-book-btn {
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        color: white;
        padding: 0.75rem 1.5rem;
        border: none;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: 500;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.3s ease;
        width: 100%;
        grid-column: 1 / -1;
    }

    .add-book-btn:hover {
        background: linear-gradient(135deg, #C8A8E0, #B595D8);
        transform: translateY(-2px);
    }

    /* Books table section styles */
    .books-table-section {
        background-color: white;
        border-radius: 12px;
        padding: 1.5rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        flex: 1;
        min-width: 0;
        margin-top: 20px;
    }

    .section-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 1.5rem;
        padding-bottom: 0.5rem;
        border-bottom: 1px solid #E8D5F2;
        flex-wrap: wrap;
        gap: 1rem;
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

    .header-controls {
        display: flex;
        gap: 1rem;
        align-items: center;
    }

    .filter-select {
        padding: 0.75rem;
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        font-size: 0.95rem;
        width: 150px;
        background-color: #f8f9fa;
        transition: border-color 0.3s ease;
    }

    .search-box {
        padding: 0.75rem;
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        font-size: 0.95rem;
        width: 200px;
        background-color: #f8f9fa;
        transition: border-color 0.3s ease;
    }

    .search-box:focus, .filter-select:focus {
        outline: none;
        border-color: #B595D8;
    }

    .table-container {
        overflow-x: auto;
    }

    .books-table {
        width: 100%;
        border-collapse: collapse;
        font-size: 0.9rem;
        min-width: 800px;
    }

    .books-table th, .books-table td {
        padding: 1rem;
        text-align: left;
        border-bottom: 1px solid #E8D5F2;
    }

    .books-table th {
        background-color: #f8f9fa;
        font-weight: 600;
        color: #333;
        white-space: nowrap;
    }

    .books-table tr:hover {
        background-color: #E8D5F2;
    }

    .category-badge {
        padding: 0.25rem 0.75rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: 500;
        color: white;
        white-space: nowrap;
    }

    .category-fiction { background: linear-gradient(135deg, #E91E63, #C2185B); }
    .category-non-fiction { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .category-science { background: linear-gradient(135deg, #4CAF50, #388E3C); }
    .category-history { background: linear-gradient(135deg, #FF9800, #F57C00); }
    .category-biography { background: linear-gradient(135deg, #9C27B0, #7B1FA2); }
    .category-children { background: linear-gradient(135deg, #FF5722, #D84315); }
    .category-textbook { background: linear-gradient(135deg, #607D8B, #455A64); }
    .category-reference { background: linear-gradient(135deg, #795548, #5D4037); }

    .status-in-stock {
        color: #4CAF50;
        font-weight: 500;
    }

    .status-low-stock {
        color: #FF9800;
        font-weight: 500;
    }

    .status-out-of-stock {
        color: #f44336;
        font-weight: 500;
    }

    .actions {
        display: flex;
        gap: 0.5rem;
    }

    .action-btn {
        padding: 0.5rem 1rem;
        border: none;
        border-radius: 6px;
        font-size: 0.85rem;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.3s ease;
        white-space: nowrap;
    }

    .edit-btn {
        background-color: #B595D8;
        color: white;
    }

    .edit-btn:hover {
        background-color: #C8A8E0;
        transform: translateY(-1px);
    }

    .delete-btn {
        background-color: #f44336;
        color: white;
    }

    .delete-btn:hover {
        background-color: #d32f2f;
        transform: translateY(-1px);
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