<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Help Content -->
<div class="content-area">
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">Billing Management Help</h1>
        <p class="page-subtitle">Everything you need to know about managing billing and payments in your bookshop system.</p>
    </div>

    <!-- Quick Navigation -->
    <div class="help-navigation">
        <div class="nav-card" onclick="scrollToSection('getting-started')">
            <div class="nav-icon">🚀</div>
            <h3>Getting Started</h3>
            <p>Basic billing setup</p>
        </div>
        <div class="nav-card" onclick="scrollToSection('creating-invoices')">
            <div class="nav-icon">📄</div>
            <h3>Creating Invoices</h3>
            <p>Generate customer bills</p>
        </div>
        <div class="nav-card" onclick="scrollToSection('payment-processing')">
            <div class="nav-icon">💳</div>
            <h3>Payment Processing</h3>
            <p>Handle transactions</p>
        </div>
        <div class="nav-card" onclick="scrollToSection('reports')">
            <div class="nav-icon">📊</div>
            <h3>Reports & Analytics</h3>
            <p>Financial insights</p>
        </div>
        <div class="nav-card" onclick="scrollToSection('troubleshooting')">
            <div class="nav-icon">🛠️</div>
            <h3>Troubleshooting</h3>
            <p>Common issues & fixes</p>
        </div>
        <div class="nav-card" onclick="scrollToSection('faqs')">
            <div class="nav-icon">❓</div>
            <h3>FAQs</h3>
            <p>Frequently asked questions</p>
        </div>
    </div>

    <!-- Help Sections -->
    <div class="help-content">
        
        <!-- Getting Started Section -->
        <div id="getting-started" class="help-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">🚀</span>
                    Getting Started with Billing
                </h2>
            </div>
            <div class="help-card">
                <h3>Setting Up Your Billing System</h3>
                <div class="step-list">
                    <div class="step-item">
                        <div class="step-number">1</div>
                        <div class="step-content">
                            <h4>Configure Store Information</h4>
                            <p>Go to Settings → Store Details and enter your bookshop's name, address, tax ID, and contact information. This will appear on all invoices.</p>
                        </div>
                    </div>
                    <div class="step-item">
                        <div class="step-number">2</div>
                        <div class="step-content">
                            <h4>Set Up Tax Rates</h4>
                            <p>Navigate to Settings → Tax Configuration to set up applicable tax rates for your location. You can configure different rates for different book categories.</p>
                        </div>
                    </div>
                    <div class="step-item">
                        <div class="step-number">3</div>
                        <div class="step-content">
                            <h4>Configure Payment Methods</h4>
                            <p>Enable your preferred payment options: Cash, Credit/Debit Cards, Online Payments, and Store Credit in Settings → Payment Methods.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Creating Invoices Section -->
        <div id="creating-invoices" class="help-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">📄</span>
                    Creating Invoices
                </h2>
            </div>
            <div class="help-card">
                <h3>How to Create a New Invoice</h3>
                <div class="instruction-box">
                    <p><strong>Path:</strong> Billing → Create New Invoice</p>
                </div>
                <div class="step-list">
                    <div class="step-item">
                        <div class="step-number">1</div>
                        <div class="step-content">
                            <h4>Select Customer</h4>
                            <p>Search for existing customer or click "Add New Customer" to create a customer profile. Customer information is required for proper billing records.</p>
                        </div>
                    </div>
                    <div class="step-item">
                        <div class="step-number">2</div>
                        <div class="step-content">
                            <h4>Add Books to Invoice</h4>
                            <p>Use the book search to find items. You can search by title, author, ISBN, or barcode. Click "Add to Invoice" for each book.</p>
                        </div>
                    </div>
                    <div class="step-item">
                        <div class="step-number">3</div>
                        <div class="step-content">
                            <h4>Apply Discounts (Optional)</h4>
                            <p>You can apply percentage discounts or fixed amount discounts at the item level or entire invoice level.</p>
                        </div>
                    </div>
                    <div class="step-item">
                        <div class="step-number">4</div>
                        <div class="step-content">
                            <h4>Review and Generate</h4>
                            <p>Review all details, ensure quantities and prices are correct, then click "Generate Invoice" to create the bill.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="help-card">
                <h3>Invoice Management Features</h3>
                <div class="feature-grid">
                    <div class="feature-item">
                        <div class="feature-icon">📋</div>
                        <h4>Draft Invoices</h4>
                        <p>Save incomplete invoices as drafts and return to them later.</p>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">🔄</div>
                        <h4>Recurring Invoices</h4>
                        <p>Set up automatic billing for regular customers or subscription services.</p>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">📧</div>
                        <h4>Email Invoices</h4>
                        <p>Send invoices directly to customer email addresses with one click.</p>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">🖨️</div>
                        <h4>Print Options</h4>
                        <p>Print invoices in various formats including receipts and detailed invoices.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Payment Processing Section -->
        <div id="payment-processing" class="help-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">💳</span>
                    Payment Processing
                </h2>
            </div>
            <div class="help-card">
                <h3>Recording Payments</h3>
                <div class="payment-methods">
                    <div class="payment-method">
                        <div class="method-icon cash">💵</div>
                        <div class="method-details">
                            <h4>Cash Payments</h4>
                            <p>Enter the amount received and the system will calculate change automatically. Always count cash carefully and provide receipt.</p>
                        </div>
                    </div>
                    <div class="payment-method">
                        <div class="method-icon card">💳</div>
                        <div class="method-details">
                            <h4>Card Payments</h4>
                            <p>Process through integrated card reader or manually enter card details. System will validate and process payment through secure gateway.</p>
                        </div>
                    </div>
                    <div class="payment-method">
                        <div class="method-icon online">🌐</div>
                        <div class="method-details">
                            <h4>Online Payments</h4>
                            <p>For online orders, payments are automatically processed. You can view payment status and issue refunds if needed.</p>
                        </div>
                    </div>
                    <div class="payment-method">
                        <div class="method-icon credit">🎫</div>
                        <div class="method-details">
                            <h4>Store Credit</h4>
                            <p>Apply existing store credit or issue new credit. System tracks all credit transactions and balances automatically.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="help-card">
                <h3>Partial Payments & Refunds</h3>
                <div class="info-boxes">
                    <div class="info-box">
                        <h4>Partial Payments</h4>
                        <p>Customers can make partial payments on large orders. The system tracks outstanding balances and sends payment reminders.</p>
                        <div class="tip">
                            <strong>Tip:</strong> Set payment terms and due dates for better cash flow management.
                        </div>
                    </div>
                    <div class="info-box">
                        <h4>Processing Refunds</h4>
                        <p>Navigate to the original invoice and click "Process Refund". Select items to refund and choose refund method (original payment method, cash, or store credit).</p>
                        <div class="warning">
                            <strong>Note:</strong> Refunds may take 2-5 business days to appear on customer's account.
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Reports Section -->
        <div id="reports" class="help-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">📊</span>
                    Reports & Analytics
                </h2>
            </div>
            <div class="help-card">
                <h3>Available Reports</h3>
                <div class="report-grid">
                    <div class="report-item">
                        <div class="report-icon">📈</div>
                        <h4>Sales Report</h4>
                        <p>Daily, weekly, monthly, and yearly sales summaries with trend analysis.</p>
                        <small>Path: Reports → Sales Report</small>
                    </div>
                    <div class="report-item">
                        <div class="report-icon">💰</div>
                        <h4>Revenue Report</h4>
                        <p>Revenue breakdown by categories, payment methods, and time periods.</p>
                        <small>Path: Reports → Revenue Report</small>
                    </div>
                    <div class="report-item">
                        <div class="report-icon">👥</div>
                        <h4>Customer Report</h4>
                        <p>Customer purchase history, payment behavior, and loyalty analysis.</p>
                        <small>Path: Reports → Customer Report</small>
                    </div>
                    <div class="report-item">
                        <div class="report-icon">📋</div>
                        <h4>Tax Report</h4>
                        <p>Tax collected summary for accounting and tax filing purposes.</p>
                        <small>Path: Reports → Tax Report</small>
                    </div>
                    <div class="report-item">
                        <div class="report-icon">📚</div>
                        <h4>Inventory Impact</h4>
                        <p>How billing affects inventory levels and stock movement.</p>
                        <small>Path: Reports → Inventory Report</small>
                    </div>
                    <div class="report-item">
                        <div class="report-icon">🔄</div>
                        <h4>Outstanding Payments</h4>
                        <p>Track pending payments, overdue accounts, and collection activities.</p>
                        <small>Path: Reports → Payments Report</small>
                    </div>
                </div>
            </div>
        </div>

        <!-- Troubleshooting Section -->
        <div id="troubleshooting" class="help-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">🛠️</span>
                    Troubleshooting Common Issues
                </h2>
            </div>
            <div class="help-card">
                <div class="troubleshoot-list">
                    <div class="trouble-item">
                        <h4>❌ Invoice Won't Generate</h4>
                        <div class="solution">
                            <p><strong>Possible Causes:</strong></p>
                            <ul>
                                <li>Missing customer information</li>
                                <li>No items added to invoice</li>
                                <li>Invalid tax configuration</li>
                            </ul>
                            <p><strong>Solution:</strong> Verify all required fields are filled, ensure at least one item is added, and check tax settings in configuration.</p>
                        </div>
                    </div>
                    
                    <div class="trouble-item">
                        <h4>💳 Payment Processing Fails</h4>
                        <div class="solution">
                            <p><strong>Common Issues:</strong></p>
                            <ul>
                                <li>Network connectivity problems</li>
                                <li>Incorrect card details</li>
                                <li>Payment gateway issues</li>
                            </ul>
                            <p><strong>Solution:</strong> Check internet connection, verify card details, or try alternative payment method. Contact support if gateway issues persist.</p>
                        </div>
                    </div>
                    
                    <div class="trouble-item">
                        <h4>🔍 Can't Find Customer/Book</h4>
                        <div class="solution">
                            <p><strong>Search Tips:</strong></p>
                            <ul>
                                <li>Try partial matches (first few letters)</li>
                                <li>Use different search criteria (name, phone, email)</li>
                                <li>Check for typos in search terms</li>
                            </ul>
                            <p><strong>Solution:</strong> If customer/book doesn't exist, use "Add New" option to create new entries.</p>
                        </div>
                    </div>
                    
                    <div class="trouble-item">
                        <h4>🖨️ Printing Issues</h4>
                        <div class="solution">
                            <p><strong>Check These Items:</strong></p>
                            <ul>
                                <li>Printer is connected and powered on</li>
                                <li>Sufficient paper and ink/toner</li>
                                <li>Correct printer selected in system</li>
                            </ul>
                            <p><strong>Solution:</strong> Test printer with other documents, check printer settings, or try PDF export option.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FAQs Section -->
        <div id="faqs" class="help-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">❓</span>
                    Frequently Asked Questions
                </h2>
            </div>
            <div class="help-card">
                <div class="faq-list">
                    <div class="faq-item">
                        <div class="faq-question" onclick="toggleFAQ(this)">
                            <h4>How do I modify an invoice after it's been generated?</h4>
                            <span class="faq-toggle">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>Once an invoice is generated and payment is processed, you cannot modify it directly. Instead, you should:</p>
                            <ul>
                                <li>Issue a credit note for corrections</li>
                                <li>Create a new invoice with correct information</li>
                                <li>Process refund if payment was already made</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question" onclick="toggleFAQ(this)">
                            <h4>Can I set up automatic discounts for regular customers?</h4>
                            <span class="faq-toggle">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>Yes! You can set up customer loyalty programs in Settings → Customer Management. Options include:</p>
                            <ul>
                                <li>Percentage discounts based on purchase history</li>
                                <li>Buy X get Y free offers</li>
                                <li>Tiered pricing for bulk purchases</li>
                                <li>Seasonal promotion codes</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question" onclick="toggleFAQ(this)">
                            <h4>How do I handle returns and exchanges?</h4>
                            <span class="faq-toggle">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>For returns and exchanges:</p>
                            <ul>
                                <li>Go to the original invoice</li>
                                <li>Click "Process Return"</li>
                                <li>Select items to return</li>
                                <li>Choose refund method or exchange option</li>
                                <li>System will automatically update inventory</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question" onclick="toggleFAQ(this)">
                            <h4>What happens if the system crashes during payment processing?</h4>
                            <span class="faq-toggle">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>The system has built-in safeguards:</p>
                            <ul>
                                <li>All transactions are logged in real-time</li>
                                <li>Payment gateway maintains transaction records</li>
                                <li>Auto-recovery will attempt to complete interrupted transactions</li>
                                <li>Manual verification tools available in Reports → Transaction Log</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question" onclick="toggleFAQ(this)">
                            <h4>How do I backup billing data?</h4>
                            <span class="faq-toggle">+</span>
                        </div>
                        <div class="faq-answer">
                            <p>Regular backups are essential:</p>
                            <ul>
                                <li>Automatic daily backups are enabled by default</li>
                                <li>Manual backup: Settings → Data Management → Create Backup</li>
                                <li>Export data: Reports → Export Data (CSV/PDF formats)</li>
                                <li>Cloud sync options available in premium plans</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contact Support Section -->
        <div class="help-section">
            <div class="support-card">
                <div class="support-header">
                    <h2>Still Need Help?</h2>
                    <p>Our support team is here to assist you with any billing-related questions.</p>
                </div>
                <div class="support-options">
                    <div class="support-option">
                        <div class="support-icon">📧</div>
                        <h3>Email Support</h3>
                        <p>billing-support@bookshop.com</p>
                        <small>Response within 24 hours</small>
                    </div>
                    <div class="support-option">
                        <div class="support-icon">💬</div>
                        <h3>Live Chat</h3>
                        <p>Available 9 AM - 6 PM</p>
                        <small>Monday to Friday</small>
                    </div>
                    <div class="support-option">
                        <div class="support-icon">📞</div>
                        <h3>Phone Support</h3>
                        <p>1-800-BOOKSHOP</p>
                        <small>Emergency support available</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Help-specific styles */
    
    .layout {
    display: flex;
    height: 100vh;
    width: 100vw;
}
.sidebar {
    width: 2500px;
    flex-shrink: 0;
    background-color: #333;
    color: white;
    padding: 1rem;
}
       .content-area {
            max-width: 100%;
            margin: 0 auto;
            flex: 1;
            padding: 2rem;
            overflow-y: auto;
            background-color: #f8f9fa;
            display: flex;
            flex-direction: column;
            gap: 1rem;
            min-width: 0rem;
            width: 80rem;
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

    .help-navigation {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 1.5rem;
        margin-bottom: 3rem;
    }

    .nav-card {
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        color: white;
        padding: 2rem;
        border-radius: 12px;
        text-align: center;
        cursor: pointer;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .nav-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    .nav-icon {
        font-size: 2.5rem;
        margin-bottom: 1rem;
    }

    .nav-card h3 {
        margin: 0 0 0.5rem 0;
        font-size: 1.2rem;
        font-weight: 600;
    }

    .nav-card p {
        margin: 0;
        opacity: 0.9;
        font-size: 0.9rem;
    }

    .help-content {
        display: flex;
        flex-direction: column;
        gap: 3rem;
    }

/*    .help-section {
        scroll-margin-top: 2rem;
    }*/

    .section-header {
        margin-bottom: 2rem;
        padding-bottom: 1rem;
        border-bottom: 2px solid #E8D5F2;
    }

    .section-title {
        font-size: 1.8rem;
        font-weight: 600;
        color: #333;
        display: flex;
        align-items: center;
        gap: 0.75rem;
        margin: 0;
    }

    .section-icon {
        font-size: 1.5rem;
    }

    .help-card {
        background-color: white;
        border-radius: 12px;
        padding: 2rem;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 2rem;
    }

    .help-card h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.3rem;
        font-weight: 600;
    }

    .step-list {
        display: flex;
        flex-direction: column;
        gap: 2rem;
    }

    .step-item {
        display: flex;
        gap: 1.5rem;
        align-items: flex-start;
    }

    .step-number {
        width: 40px;
        height: 40px;
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: bold;
        font-size: 1.1rem;
        flex-shrink: 0;
    }

    .step-content h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .step-content p {
        margin: 0;
        color: #666;
        line-height: 1.6;
    }

    .instruction-box {
        background-color: #E8D5F2;
        padding: 1rem;
        border-radius: 8px;
        margin-bottom: 1.5rem;
        border-left: 4px solid #B595D8;
    }

    .instruction-box p {
        margin: 0;
        color: #333;
        font-weight: 500;
    }

    .feature-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1.5rem;
    }

    .feature-item {
        background-color: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #E8D5F2;
    }

    .feature-icon {
        font-size: 2rem;
        margin-bottom: 1rem;
    }

    .feature-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .feature-item p {
        margin: 0;
        color: #666;
        font-size: 0.9rem;
        line-height: 1.5;
    }

    .payment-methods {
        display: flex;
        flex-direction: column;
        gap: 1.5rem;
    }

    .payment-method {
        display: flex;
        gap: 1.5rem;
        align-items: flex-start;
        padding: 1.5rem;
        background-color: #f8f9fa;
        border-radius: 8px;
        border: 1px solid #E8D5F2;
    }

    .method-icon {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.5rem;
        flex-shrink: 0;
    }

    .method-icon.cash { background: linear-gradient(135deg, #4CAF50, #45a049); }
    .method-icon.card { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .method-icon.online { background: linear-gradient(135deg, #FF9800, #F57C00); }
    .method-icon.credit { background: linear-gradient(135deg, #B595D8, #C8A8E0); }

    .method-details h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .method-details p {
        margin: 0;
        color: #666;
        line-height: 1.6;
    }

    .info-boxes {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 1.5rem;
    }

    .info-box {
        padding: 1.5rem;
        background-color: #f8f9fa;
        border-radius: 8px;
        border: 1px solid #E8D5F2;
    }

    .info-box h4 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .info-box p {
        margin: 0 0 1rem 0;
        color: #666;
        line-height: 1.6;
    }

    .tip {
        background-color: #E8F5E8;
        padding: 0.75rem;
        border-radius: 6px;
        color: #2E7D32;
        font-size: 0.9rem;
        border-left: 3px solid #4CAF50;
    }

    .warning {
        background-color: #FFF3E0;
        padding: 0.75rem;
        border-radius: 6px;
        color: #E65100;
        font-size: 0.9rem;
        border-left: 3px solid #FF9800;
    }

    .report-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 1.5rem;
    }

    .report-item {
        background-color: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        border: 1px solid #E8D5F2;
        text-align: center;
    }

    .report-icon {
        font-size: 2rem;
        margin-bottom: 1rem;
    }

    .report-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .report-item p {
        margin: 0 0 0.5rem 0;
        color: #666;
        font-size: 0.9rem;
        line-height: 1.5;
    }

    .report-item small {
        color: #B595D8;
        font-weight: 500;
    }

    .troubleshoot-list {
        display: flex;
        flex-direction: column;
        gap: 2rem;
    }

    .trouble-item {
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        overflow: hidden;
    }

    .trouble-item h4 {
        background-color: #FFF3E0;
        margin: 0;
        padding: 1rem 1.5rem;
        color: #E65100;
        font-size: 1rem;
        border-bottom: 1px solid #E8D5F2;
    }

    .solution {
        padding: 1.5rem;
        background-color: white;
    }

    .solution p {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-weight: 500;
    }

    .solution ul {
        margin: 0.5rem 0 1rem 1rem;
        color: #666;
    }

    .solution ul li {
        margin-bottom: 0.25rem;
        line-height: 1.5;
    }

    .faq-list {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    .faq-item {
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        overflow: hidden;
    }

    .faq-question {
        background-color: #f8f9fa;
        padding: 1.5rem;
        cursor: pointer;
        display: flex;
        justify-content: space-between;
        align-items: center;
        transition: background-color 0.3s ease;
    }

    .faq-question:hover {
        background-color: #E8D5F2;
    }

    .faq-question h4 {
        margin: 0;
        color: #333;
        font-size: 1rem;
        font-weight: 500;
    }

    .faq-toggle {
        font-size: 1.2rem;
        font-weight: bold;
        color: #B595D8;
        transition: transform 0.3s ease;
    }

    .faq-answer {
        padding: 0 1.5rem;
        max-height: 0;
        overflow: hidden;
        transition: all 0.3s ease;
        background-color: white;
    }

    .faq-answer.active {
        padding: 1.5rem;
        max-height: 500px;
    }

    .faq-answer p {
        margin: 0 0 1rem 0;
        color: #666;
        line-height: 1.6;
    }

    .faq-answer ul {
        margin: 0 0 1rem 1rem;
        color: #666;
    }

    .faq-answer ul li {
        margin-bottom: 0.5rem;
        line-height: 1.5;
    }

    .support-card {
        background: linear-gradient(135deg, #B595D8, #C8A8E0);
        color: white;
        padding: 3rem;
        border-radius: 12px;
        text-align: center;
        margin-top: 2rem;
    }

    .support-header h2 {
        margin: 0 0 1rem 0;
        font-size: 2rem;
        font-weight: 600;
    }

    .support-header p {
        margin: 0 0 2rem 0;
        font-size: 1.1rem;
        opacity: 0.9;
    }

    .support-options {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 2rem;
        margin-top: 2rem;
    }

    .support-option {
        background-color: rgba(255, 255, 255, 0.1);
        padding: 2rem;
        border-radius: 12px;
        backdrop-filter: blur(10px);
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .support-icon {
        font-size: 2.5rem;
        margin-bottom: 1rem;
    }

    .support-option h3 {
        margin: 0 0 0.5rem 0;
        font-size: 1.2rem;
        font-weight: 600;
    }

    .support-option p {
        margin: 0 0 0.25rem 0;
        font-size: 1rem;
        font-weight: 500;
    }

    .support-option small {
        opacity: 0.8;
        font-size: 0.9rem;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .content-area {
            padding: 1rem;
        }

        .help-navigation {
            grid-template-columns: 1fr;
            gap: 1rem;
        }

        .nav-card {
            padding: 1.5rem;
        }

        .feature-grid {
            grid-template-columns: 1fr;
        }

        .info-boxes {
            grid-template-columns: 1fr;
        }

        .report-grid {
            grid-template-columns: 1fr;
        }

        .support-options {
            grid-template-columns: 1fr;
        }

        .step-item {
            flex-direction: column;
            gap: 1rem;
        }

        .payment-method {
            flex-direction: column;
            gap: 1rem;
            text-align: center;
        }
    }

    @media (max-width: 480px) {
        .page-title {
            font-size: 1.5rem;
        }

        .section-title {
            font-size: 1.4rem;
        }

        .nav-card {
            padding: 1rem;
        }

        .help-card {
            padding: 1.5rem;
        }

        .support-card {
            padding: 2rem;
        }
    }
</style>

<script>
    // Help page functionality
    function scrollToSection(sectionId) {
        const element = document.getElementById(sectionId);
        if (element) {
            element.scrollIntoView({ 
                behavior: 'smooth',
                block: 'start'
            });
        }
    }

    function toggleFAQ(questionElement) {
        const answer = questionElement.nextElementSibling;
        const toggle = questionElement.querySelector('.faq-toggle');
        
        // Close all other FAQs
        const allAnswers = document.querySelectorAll('.faq-answer');
        const allToggles = document.querySelectorAll('.faq-toggle');
        
        allAnswers.forEach((ans, index) => {
            if (ans !== answer) {
                ans.classList.remove('active');
                allToggles[index].textContent = '+';
                allToggles[index].style.transform = 'rotate(0deg)';
            }
        });
        
        // Toggle current FAQ
        if (answer.classList.contains('active')) {
            answer.classList.remove('active');
            toggle.textContent = '+';
            toggle.style.transform = 'rotate(0deg)';
        } else {
            answer.classList.add('active');
            toggle.textContent = '−';
            toggle.style.transform = 'rotate(180deg)';
        }
    }

    // Initialize help page
    function initializeHelpPage() {
        // Add smooth scrolling for navigation cards
        const navCards = document.querySelectorAll('.nav-card');
        navCards.forEach(card => {
            card.addEventListener('click', function() {
                const targetSection = this.getAttribute('onclick').match(/'([^']+)'/)[1];
                scrollToSection(targetSection);
            });
        });

        // Add keyboard navigation for FAQs
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Enter' || e.key === ' ') {
                const focusedElement = document.activeElement;
                if (focusedElement.classList.contains('faq-question')) {
                    e.preventDefault();
                    toggleFAQ(focusedElement);
                }
            }
        });

        // Make FAQ questions focusable for accessibility
        const faqQuestions = document.querySelectorAll('.faq-question');
        faqQuestions.forEach(question => {
            question.setAttribute('tabindex', '0');
            question.setAttribute('role', 'button');
            question.setAttribute('aria-expanded', 'false');
        });

        console.log('Help page initialized successfully');
    }

    // Initialize when DOM is ready
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initializeHelpPage);
    } else {
        initializeHelpPage();
    }

    // Also initialize when window loads (fallback)
    window.addEventListener('load', function() {
        setTimeout(initializeHelpPage, 100);
    });

    // Search functionality for help content
    function searchHelpContent(query) {
        if (!query) return;
        
        const sections = document.querySelectorAll('.help-section');
        let found = false;
        
        sections.forEach(section => {
            const content = section.textContent.toLowerCase();
            if (content.includes(query.toLowerCase())) {
                section.style.display = 'block';
                if (!found) {
                    section.scrollIntoView({ behavior: 'smooth', block: 'start' });
                    found = true;
                }
            } else {
                section.style.display = 'none';
            }
        });
        
        if (!found) {
            alert('No results found for "' + query + '". Please try different keywords.');
            // Show all sections if no results found
            sections.forEach(section => {
                section.style.display = 'block';
            });
        }
    }

    // Add search functionality (can be called from external search input)
    window.searchHelp = searchHelpContent;
</script>