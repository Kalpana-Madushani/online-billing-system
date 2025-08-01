<%-- 
    Document   : dashboard
    Created on : Jul 31, 2025, 10:29:21 AM
    Author     : elegant media
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BookBase</title>
    <link rel="stylesheet" href="css/home-style.css">
    </head>
    <body>
        <main class="main-body">
    <div class="content-area">
        <!-- Recommended Section -->
        <section class="recommended-section">
            <div class="section-header">
                <h2 class="section-title">Recommended</h2>
                <a href="#" class="see-all-link">See All ></a>
            </div>
            <div class="book-grid">
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/4A90E2/FFFFFF?text=Psychology" alt="Psychology of Money">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">The Psychology of...</h3>
                        <p class="book-author">Morgan Housel</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/FFD700/000000?text=Innovation" alt="How Innovation Works">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">How Innovation...</h3>
                        <p class="book-author">Matt Ridley</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/E6E6E6/000000?text=Company" alt="Company of One">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">Company of One</h3>
                        <p class="book-author">Paul Jarvis</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/8B4513/FFFFFF?text=Stupore" alt="Stupore E Tremori">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">Stupore E Tremori</h3>
                        <p class="book-author">Amelie Nothomb</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="categories-section">
            <div class="section-header">
                <h2 class="section-title">Categories</h2>
                <button class="filter-btn">⚙️</button>
            </div>
            <div class="category-tabs">
                <button class="category-tab active">All</button>
                <button class="category-tab">Sci-Fi</button>
                <button class="category-tab">Fantasy</button>
                <button class="category-tab">Drama</button>
                <button class="category-tab">Business</button>
                <button class="category-tab">Education</button>
                <button class="category-tab">Geography</button>
            </div>
            <div class="book-grid">
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/2E8B57/FFFFFF?text=Bees" alt="The Bees">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">The Bees</h3>
                        <p class="book-author">Laline Paull</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/FF6B6B/FFFFFF?text=Real+Help" alt="Real Help">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">Real Help</h3>
                        <p class="book-author">Ayodeji Awosika</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/8B0000/FFFFFF?text=The+Fact" alt="The Fact of a Body">
                        <div class="book-rating">
                            <span class="stars">⭐</span>
                            <span class="rating-text">4.8</span>
                        </div>
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">The Fact of a Body</h3>
                        <p class="book-author">Author Name</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/87CEEB/000000?text=The+Room" alt="The Room">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">The Room</h3>
                        <p class="book-author">Jonas Karlsson</p>
                    </div>
                </div>
                <div class="book-card">
                    <div class="book-cover">
                        <img src="https://via.placeholder.com/150x200/DDA0DD/000000?text=Through" alt="Through the...">
                    </div>
                    <div class="book-info">
                        <h3 class="book-title">Through the...</h3>
                        <p class="book-author">Cate Emond</p>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Book Detail Panel -->
    <div class="book-detail-panel">
        <div class="book-detail-content">
            <div class="book-detail-cover">
                <img src="https://via.placeholder.com/200x250/E6E6E6/000000?text=Company+of+One" alt="Company of One">
            </div>
            <div class="book-detail-info">
                <h2 class="book-detail-title">Company of One</h2>
                <p class="book-detail-author">Paul Jarvis</p>
                <div class="book-rating-detail">
                    <div class="stars">⭐⭐⭐⭐⭐</div>
                    <span class="rating-number">4.8</span>
                </div>
                <div class="book-stats">
                    <div class="stat">
                        <span class="stat-number">320</span>
                        <span class="stat-label">Pages</span>
                    </div>
                    <div class="stat">
                        <span class="stat-number">643</span>
                        <span class="stat-label">Ratings</span>
                    </div>
                    <div class="stat">
                        <span class="stat-number">110</span>
                        <span class="stat-label">Reviews</span>
                    </div>
                </div>
                <div class="book-description">
                    <p>Company of One offers a refreshingly original business strategy that's focused on commitment to being better instead of bigger. Why? Because staying small provides one with the freedom to pursue more meaningful pleasures in life—and avoid the headaches that...</p>
                </div>
                <button class="read-now-btn">Read Now 📖</button>
            </div>
        </div>
    </div>
</main>
    </body>
</html>

<style>
    /* General Reset and Base Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
    background-color: #f8f9fa;
    color: #333;
    line-height: 1.6;
}

/* Main Container */
.content-area {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
    display: flex;
    flex-direction: column;
    gap: 2rem;
}

/* Recommended Section */
.recommended-section {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
}

.section-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 1rem;
}

.section-title {
    font-size: 1.8rem;
    font-weight: 600;
    color: #333;
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.see-all {
    font-size: 1rem;
    color: #667eea;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s ease;
}

.see-all:hover {
    color: #764ba2;
    text-decoration: underline;
}

/* Book Grid */
.book-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1.5rem;
}

/* Book Card */
.book-card {
    background: white;
    border-radius: 12px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    display: flex;
    flex-direction: column;
}

.book-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.book-image {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-bottom: 1px solid #eee;
}

.book-info {
    padding: 1rem;
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    flex: 1;
}

.book-title {
    font-size: 1.1rem;
    font-weight: 600;
    color: #333;
    margin: 0;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
}

.book-author {
    font-size: 0.9rem;
    color: #666;
    margin: 0;
}

.book-rating {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.9rem;
    color: #f39c12;
}

.star-rating {
    display: flex;
    gap: 0.2rem;
}

.star {
    font-size: 1rem;
}

.book-details {
    font-size: 0.85rem;
    color: #666;
    margin: 0.5rem 0;
}

.book-description {
    font-size: 0.85rem;
    color: #666;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
    margin-bottom: 0.5rem;
}

.read-now-btn {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 1rem;
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 0.9rem;
    font-weight: 500;
    text-decoration: none;
    cursor: pointer;
    transition: all 0.3s ease;
    margin-top: auto;
    align-self: flex-start;
}

.read-now-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
}

/* Categories Section */
.categories-section {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    margin-top: 2rem;
}

.categories-title {
    font-size: 1.5rem;
    font-weight: 600;
    color: #333;
}

.category-filters {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
}

.category-btn {
    padding: 0.5rem 1rem;
    border: 2px solid #e1e5e9;
    border-radius: 20px;
    font-size: 0.9rem;
    color: #333;
    background: white;
    cursor: pointer;
    transition: all 0.3s ease;
}

.category-btn:hover {
    background: #667eea;
    color: white;
    border-color: #667eea;
}

.category-btn.active {
    background: #667eea;
    color: white;
    border-color: #667eea;
}

/* Responsive Design */
@media (max-width: 900px) {
    .content-area {
        padding: 1rem;
    }

    .book-grid {
        grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
        gap: 1rem;
    }

    .book-image {
        height: 180px;
    }

    .book-title {
        font-size: 1rem;
    }

    .book-author, .book-rating, .book-details, .book-description {
        font-size: 0.8rem;
    }

    .read-now-btn {
        font-size: 0.85rem;
        padding: 0.4rem 0.8rem;
    }
}

@media (max-width: 600px) {
    .content-area {
        padding: 0.5rem;
    }

    .section-header {
        flex-direction: column;
        align-items: flex-start;
        gap: 0.5rem;
    }

    .book-grid {
        grid-template-columns: 1fr;
    }

    .book-image {
        height: 200px;
    }

    .category-filters {
        flex-direction: column;
        align-items: flex-start;
    }

    .category-btn {
        width: 100%;
        text-align: center;
    }
}
</style>
