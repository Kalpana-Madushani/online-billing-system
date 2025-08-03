<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Help Section Content -->
<div class="content-area">
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">Help & Documentation</h1>
        <p class="page-subtitle">Complete guide to using the Bookshop Management System admin panel.</p>
    </div>

    <!-- Quick Access Cards -->
    <div class="dashboard-stats">
        <div class="stat-card help-card" onclick="scrollToSection('billing')">
            <div class="stat-icon billing">💳</div>
            <div class="stat-content">
                <h3>Billing System</h3>
                <p>Invoice generation & payment processing</p>
                <small class="stat-change neutral">Click to learn more</small>
            </div>
        </div>
        <div class="stat-card help-card" onclick="scrollToSection('inventory')">
            <div class="stat-icon inventory">📦</div>
            <div class="stat-content">
                <h3>Inventory Management</h3>
                <p>Stock control & book management</p>
                <small class="stat-change neutral">Click to learn more</small>
            </div>
        </div>
        <div class="stat-card help-card" onclick="scrollToSection('reports')">
            <div class="stat-icon reports">📊</div>
            <div class="stat-content">
                <h3>Reports & Analytics</h3>
                <p>Sales reports & performance metrics</p>
                <small class="stat-change neutral">Click to learn more</small>
            </div>
        </div>
        <div class="stat-card help-card" onclick="scrollToSection('support')">
            <div class="stat-icon support">🛠️</div>
            <div class="stat-content">
                <h3>Technical Support</h3>
                <p>Troubleshooting & contact information</p>
                <small class="stat-change neutral">Click to learn more</small>
            </div>
        </div>
    </div>

    <!-- Help Content Sections -->
    <div class="dashboard-grid">
        
        <!-- Billing System Help -->
        <div class="dashboard-section full-width" id="billing">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">💳</span>Billing System Guide</h2>
            </div>
            
            <div class="help-content">
                <div class="help-subsection">
                    <h3>Creating New Invoices</h3>
                    <div class="help-steps">
                        <div class="step">
                            <span class="step-number">1</span>
                            <div class="step-content">
                                <h4>Navigate to Billing Section</h4>
                                <p>Click on "Billing" in the main navigation menu to access the billing dashboard.</p>
                            </div>
                        </div>
                        <div class="step">
                            <span class="step-number">2</span>
                            <div class="step-content">
                                <h4>Add Customer Information</h4>
                                <p>Enter customer details including name, contact information, and billing address. You can also search for existing customers.</p>
                            </div>
                        </div>
                        <div class="step">
                            <span class="step-number">3</span>
                            <div class="step-content">
                                <h4>Add Books to Invoice</h4>
                                <p>Search for books by title, author, or ISBN. Select quantities and the system will automatically calculate totals including applicable taxes.</p>
                            </div>
                        </div>
                        <div class="step">
                            <span class="step-number">4</span>
                            <div class="step-content">
                                <h4>Apply Discounts & Generate</h4>
                                <p>Apply any discounts or promotional codes, review the final amount, and click "Generate Invoice" to create the bill.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="help-subsection">
                    <h3>Payment Processing</h3>
                    <ul class="help-list">
                        <li><strong>Cash Payments:</strong> Select "Cash" and enter the amount received. The system will calculate change automatically.</li>
                        <li><strong>Card Payments:</strong> Select "Card" and follow the prompts for credit/debit card processing.</li>
                        <li><strong>Digital Payments:</strong> Support for UPI, mobile wallets, and online payment gateways.</li>
                        <li><strong>Credit Sales:</strong> Create invoices with payment terms for regular customers with credit accounts.</li>
                    </ul>
                </div>

                <div class="help-subsection">
                    <h3>Invoice Management</h3>
                    <ul class="help-list">
                        <li><strong>View Invoices:</strong> Access all generated invoices from the "Invoice History" section.</li>
                        <li><strong>Print/Email:</strong> Print invoices directly or email them to customers automatically.</li>
                        <li><strong>Refunds & Returns:</strong> Process returns and generate credit notes for returned items.</li>
                        <li><strong>Invoice Status:</strong> Track payment status - Paid, Pending, Overdue, or Cancelled.</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Inventory Management Help -->
        <div class="dashboard-section full-width" id="inventory">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">📦</span>Inventory Management Guide</h2>
            </div>
            
            <div class="help-content">
                <div class="help-subsection">
                    <h3>Adding New Books</h3>
                    <div class="help-steps">
                        <div class="step">
                            <span class="step-number">1</span>
                            <div class="step-content">
                                <h4>Book Information</h4>
                                <p>Enter book details: Title, Author, ISBN, Publisher, Publication Date, and Category.</p>
                            </div>
                        </div>
                        <div class="step">
                            <span class="step-number">2</span>
                            <div class="step-content">
                                <h4>Pricing & Stock</h4>
                                <p>Set purchase price, selling price, and initial stock quantity. The system will track profit margins automatically.</p>
                            </div>
                        </div>
                        <div class="step">
                            <span class="step-number">3</span>
                            <div class="step-content">
                                <h4>Additional Details</h4>
                                <p>Add book description, cover image, and set minimum stock alert levels for automatic reorder notifications.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="help-subsection">
                    <h3>Stock Management</h3>
                    <ul class="help-list">
                        <li><strong>Stock Updates:</strong> Manually adjust stock levels or use the bulk import feature for large updates.</li>
                        <li><strong>Low Stock Alerts:</strong> Receive notifications when book quantities fall below minimum levels.</li>
                        <li><strong>Stock Valuation:</strong> View total inventory value and individual book profitability reports.</li>
                        <li><strong>Barcode Integration:</strong> Use barcode scanners for quick stock updates and sales processing.</li>
                    </ul>
                </div>

                <div class="help-subsection">
                    <h3>Categories & Organization</h3>
                    <ul class="help-list">
                        <li><strong>Book Categories:</strong> Organize books into categories like Fiction, Non-Fiction, Academic, Children's Books, etc.</li>
                        <li><strong>Search & Filter:</strong> Use advanced search options to quickly find books by various criteria.</li>
                        <li><strong>Bulk Operations:</strong> Perform bulk price updates, category changes, and stock adjustments.</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Reports & Analytics Help -->
        <div class="dashboard-section full-width" id="reports">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">📊</span>Reports & Analytics Guide</h2>
            </div>
            
            <div class="help-content">
                <div class="help-subsection">
                    <h3>Sales Reports</h3>
                    <ul class="help-list">
                        <li><strong>Daily Sales:</strong> View day-wise sales summary with revenue, units sold, and top-selling books.</li>
                        <li><strong>Monthly Reports:</strong> Comprehensive monthly performance with trends and comparisons.</li>
                        <li><strong>Customer Reports:</strong> Analyze customer purchase patterns and identify top customers.</li>
                        <li><strong>Book Performance:</strong> Track which books are selling well and identify slow-moving inventory.</li>
                    </ul>
                </div>

                <div class="help-subsection">
                    <h3>Financial Reports</h3>
                    <ul class="help-list">
                        <li><strong>Revenue Analysis:</strong> Track total revenue, profit margins, and payment method breakdowns.</li>
                        <li><strong>Tax Reports:</strong> Generate tax summaries for accounting and compliance purposes.</li>
                        <li><strong>Outstanding Payments:</strong> Monitor pending payments and overdue accounts.</li>
                        <li><strong>Expense Tracking:</strong> Record and analyze business expenses and operational costs.</li>
                    </ul>
                </div>

                <div class="help-subsection">
                    <h3>Exporting Data</h3>
                    <ul class="help-list">
                        <li><strong>PDF Reports:</strong> Generate professional PDF reports for printing and sharing.</li>
                        <li><strong>Excel Export:</strong> Export data to Excel for further analysis and custom reporting.</li>
                        <li><strong>Scheduled Reports:</strong> Set up automatic report generation and email delivery.</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Troubleshooting & Support -->
        <div class="dashboard-section" id="support">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">🛠️</span>Technical Support</h2>
            </div>
            
            <div class="help-content">
                <div class="help-subsection">
                    <h3>Common Issues</h3>
                    <div class="faq-item">
                        <h4>Q: Invoice not printing correctly?</h4>
                        <p>A: Check printer settings and ensure paper size is set to A4. Update printer drivers if necessary.</p>
                    </div>
                    <div class="faq-item">
                        <h4>Q: Book search not working?</h4>
                        <p>A: Clear browser cache and refresh the page. Ensure book data is properly entered with correct spelling.</p>
                    </div>
                    <div class="faq-item">
                        <h4>Q: Reports loading slowly?</h4>
                        <p>A: Large date ranges may take time to process. Try narrowing the date range or contact support for optimization.</p>
                    </div>
                </div>

                <div class="help-subsection">
                    <h3>Contact Information</h3>
                    <ul class="help-list">
                        <li><strong>Technical Support:</strong> support@bookshop-system.com</li>
                        <li><strong>Phone:</strong> +94 11 234 5678</li>
                        <li><strong>Hours:</strong> Monday - Friday, 9:00 AM - 6:00 PM</li>
                        <li><strong>Emergency Support:</strong> Available 24/7 for critical issues</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Quick Reference -->
        <div class="dashboard-section">
            <div class="section-header">
                <h2 class="section-title"><span class="section-icon">⚡</span>Quick Reference</h2>
            </div>
            
            <div class="help-content">
                <div class="help-subsection">
                    <h3>Keyboard Shortcuts</h3>
                    <ul class="help-list">
                        <li><strong>Ctrl + N:</strong> New Invoice</li>
                        <li><strong>Ctrl + S:</strong> Save Current Form</li>
                        <li><strong>Ctrl + P:</strong> Print Invoice</li>
                        <li><strong>F3:</strong> Search Books</li>
                        <li><strong>F5:</strong> Refresh Data</li>
                    </ul>
                </div>

                <div class="help-subsection">
                    <h3>System Requirements</h3>
                    <ul class="help-list">
                        <li><strong>Browser:</strong> Chrome 90+, Firefox 88+, Safari 14+</li>
                        <li><strong>Internet:</strong> Stable broadband connection</li>
                        <li><strong>Hardware:</strong> 4GB RAM, 500MB storage</li>
                        <li><strong>Printer:</strong> Any standard printer for invoices</li>
                    </ul>
                </div>
            </div>
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

    .help-card {
        cursor: pointer;
    }

    .help-card:hover {
        border-left: 4px solid #B595D8;
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

    .stat-icon.billing { background: linear-gradient(135deg, #4CAF50, #388E3C); }
    .stat-icon.inventory { background: linear-gradient(135deg, #FF9800, #F57C00); }
    .stat-icon.reports { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .stat-icon.support { background: linear-gradient(135deg, #AB47BC, #8E24AA); }

    .stat-content h3 {
        margin: 0;
        font-size: 1.2rem;
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
        margin-bottom: 1.5rem;
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

    .help-content {
        display: flex;
        flex-direction: column;
        gap: 2rem;
    }

    .help-subsection {
        margin-bottom: 1.5rem;
    }

    .help-subsection h3 {
        font-size: 1.1rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 1rem;
        border-left: 4px solid #B595D8;
        padding-left: 1rem;
    }

    .help-steps {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    .step {
        display: flex;
        gap: 1rem;
        align-items: flex-start;
        background-color: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
    }

    .step-number {
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        color: white;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: bold;
        font-size: 0.9rem;
        flex-shrink: 0;
    }

    .step-content h4 {
        margin: 0 0 0.5rem 0;
        font-size: 1rem;
        color: #333;
        font-weight: 600;
    }

    .step-content p {
        margin: 0;
        color: #666;
        font-size: 0.9rem;
        line-height: 1.5;
    }

    .help-list {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .help-list li {
        background-color: #f8f9fa;
        padding: 0.8rem 1rem;
        margin-bottom: 0.5rem;
        border-radius: 6px;
        border-left: 3px solid #B595D8;
        font-size: 0.9rem;
        line-height: 1.4;
    }

    .help-list strong {
        color: #333;
    }

    .faq-item {
        background-color: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
        margin-bottom: 1rem;
    }

    .faq-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 0.95rem;
        font-weight: 600;
    }

    .faq-item p {
        margin: 0;
        color: #666;
        font-size: 0.9rem;
        line-height: 1.4;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .dashboard-grid {
            grid-template-columns: 1fr;
        }
        .dashboard-stats {
            grid-template-columns: 1fr 1fr;
        }
        .content-area {
            min-width: auto;
            padding: 1rem;
        }
    }

    @media (max-width: 480px) {
        .dashboard-stats {
            grid-template-columns: 1fr;
        }
        .step {
            flex-direction: column;
            gap: 0.5rem;
        }
        .step-number {
            align-self: flex-start;
        }
    }

    /* Smooth scrolling for navigation */
    html {
        scroll-behavior: smooth;
    }

    .dashboard-section {
        scroll-margin-top: 2rem;
    }
</style>

<script>
    // Function to scroll to specific help sections
    function scrollToSection(sectionId) {
        const element = document.getElementById(sectionId);
        if (element) {
            element.scrollIntoView({ 
                behavior: 'smooth',
                block: 'start'
            });
            
            // Add highlight effect
            element.style.transform = 'scale(1.02)';
            element.style.boxShadow = '0 8px 25px rgba(181, 149, 216, 0.3)';
            
            setTimeout(() => {
                element.style.transform = 'scale(1)';
                element.style.boxShadow = '0 1px 4px rgba(0,0,0,0.1)';
            }, 1000);
        }
    }

    // Add keyboard shortcut functionality
    document.addEventListener('keydown', function(event) {
        // Example: Press 'H' to scroll to top of help
        if (event.key === 'h' || event.key === 'H') {
            if (event.ctrlKey) {
                event.preventDefault();
                window.scrollTo({ top: 0, behavior: 'smooth' });
            }
        }
    });

    // Add search functionality for help content
    function initializeHelpSearch() {
        const searchInput = document.createElement('input');
        searchInput.type = 'text';
        searchInput.placeholder = 'Search help content...';
        searchInput.id = 'helpSearch';
        searchInput.style.cssText = `
            width: 100%;
            padding: 0.8rem;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            margin-bottom: 1rem;
        `;
        
        // Insert search box after page header
        const pageHeader = document.querySelector('.page-header');
        pageHeader.appendChild(searchInput);
        
        // Add search functionality
        searchInput.addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const helpSections = document.querySelectorAll('.help-subsection');
            
            helpSections.forEach(section => {
                const text = section.textContent.toLowerCase();
                if (text.includes(searchTerm) || searchTerm === '') {
                    section.style.display = 'block';
                } else {
                    section.style.display = 'none';
                }
            });
        });
    }

    // Initialize search when page loads
    document.addEventListener('DOMContentLoaded', initializeHelpSearch);
</script>