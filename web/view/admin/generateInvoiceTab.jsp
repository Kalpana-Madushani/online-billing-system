<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Invoice Management</title>
    <style>
        /* Invoice Management Styles */
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
            min-width: 80rem;
            width: 100%;
        }
        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 1rem;
            flex-wrap: wrap;
            gap: 1rem;
        }
        .header-actions {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
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
        /* Button Styles */
        .btn {
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 0.9rem;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: all 0.3s ease;
            text-decoration: none;
        }
        .btn-primary {
            background: linear-gradient(135deg, #B595D8, #C8A8E0);
            color: white;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #A085C8, #B798D0);
            transform: translateY(-1px);
        }
        .btn-secondary {
            background: linear-gradient(135deg, #4CAF50, #45a049);
            color: white;
        }
        .btn-secondary:hover {
            background: linear-gradient(135deg, #3C9F40, #3d8b3d);
            transform: translateY(-1px);
        }
        .btn-outline {
            background: white;
            color: #B595D8;
            border: 2px solid #B595D8;
        }
        .btn-outline:hover {
            background: #B595D8;
            color: white;
        }
        .btn-sm {
            padding: 0.5rem 1rem;
            font-size: 0.8rem;
        }
        .btn-icon {
            font-size: 1rem;
        }
        .btn-icon-sm {
            width: 32px;
            height: 32px;
            border: none;
            background: none;
            cursor: pointer;
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }
        .btn-icon-sm:hover {
            background-color: #E8D5F2;
        }
        /* Invoice Filters */
        .invoice-filters {
            background: white;
            padding: 1rem;
            border-radius: 12px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 0.5rem; /* Small gap between filters and table */
        }
        .filter-group {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
            align-items: center;
        }
        .search-input, .filter-select {
            padding: 0.75rem;
            border: 2px solid #E8D5F2;
            border-radius: 8px;
            font-size: 0.9rem;
            transition: border-color 0.3s ease;
        }
        .search-input {
            min-width: 250px;
            flex: 1;
        }
        .filter-select {
            min-width: 150px;
        }
        .search-input:focus, .filter-select:focus {
            outline: none;
            border-color: #B595D8;
        }
        /* Invoice Statistics */
        .invoice-stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
        }
        .stat-card {
            background-color: white;
            border-radius: 12px;
            padding: 1.5rem;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            gap: 1rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .stat-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }
        .stat-icon {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            color: white;
            flex-shrink: 0;
        }
        .stat-icon.revenue { background: linear-gradient(135deg, #4CAF50, #45a049); }
        .stat-icon.pending { background: linear-gradient(135deg, #FF9800, #F57C00); }
        .stat-icon.paid { background: linear-gradient(135deg, #2196F3, #1976D2); }
        .stat-icon.overdue { background: linear-gradient(135deg, #f44336, #d32f2f); }
        .stat-content h3 {
            font-size: 1.8rem;
            font-weight: bold;
            color: #333;
            margin: 0;
        }
        .stat-content p {
            color: #666;
            margin: 0;
            font-size: 0.9rem;
        }
        .stat-change {
            font-size: 0.8rem;
            margin-top: 0.25rem;
            display: block;
        }
        .stat-change.positive { color: #4CAF50; }
        .stat-change.negative { color: #f44336; }
        .stat-change.neutral { color: #666; }
        /* Invoice Table */
        .invoice-table-container {
            background: white;
            border-radius: 12px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .table-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem;
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
        .table-wrapper {
            overflow-x: auto;
        }
        .invoice-table {
            width: 100%;
            border-collapse: collapse;
        }
        .invoice-table th,
        .invoice-table td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #f0f0f0;
        }
        .invoice-table th {
            background-color: #f8f9fa;
            font-weight: 600;
            color: #333;
            position: sticky;
            top: 0;
        }
        .invoice-table tbody tr:hover {
            background-color: #f8f9fa;
        }
        .invoice-number {
            font-weight: 600;
            color: #B595D8;
        }
        .customer-info strong {
            display: block;
            color: #333;
        }
        .customer-info small {
            color: #666;
            font-size: 0.8rem;
        }
        .amount {
            font-weight: 600;
            color: #4CAF50;
        }
        /* Status Badges */
        .status-badge {
            padding: 0.25rem 0.75rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 500;
            text-transform: uppercase;
        }
        .status-badge.paid {
            background-color: #e8f5e8;
            color: #4CAF50;
        }
        .status-badge.pending {
            background-color: #fff3e0;
            color: #FF9800;
        }
        .status-badge.overdue {
            background-color: #ffebee;
            color: #f44336;
        }
        .status-badge.cancelled {
            background-color: #f5f5f5;
            color: #666;
        }
        .action-buttons {
            display: flex;
            gap: 0.25rem;
        }
        /* Pagination */
        .pagination-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem;
            border-top: 1px solid #E8D5F2;
        }
        .pagination-info {
            color: #666;
            font-size: 0.9rem;
        }
        .pagination {
            display: flex;
            gap: 0.5rem;
        }
        .pagination-btn {
            padding: 0.5rem 1rem;
            border: 1px solid #E8D5F2;
            background: white;
            color: #666;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .pagination-btn:hover:not(:disabled) {
            background: #E8D5F2;
            color: #B595D8;
        }
        .pagination-btn.active {
            background: #B595D8;
            color: white;
            border-color: #B595D8;
        }
        .pagination-btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
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
            background-color: rgba(0, 0, 0, 0.5);
            overflow-y: auto;
        }
        .modal-content {
            background-color: white;
            margin: 2% auto;
            border-radius: 12px;
            width: 90%;
            max-width: 900px;
            max-height: 90vh;
            overflow-y: auto;
        }
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem;
            border-bottom: 1px solid #E8D5F2;
        }
        .modal-header h2 {
            margin: 0;
            color: #333;
        }
        .modal-close {
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: #666;
            padding: 0.5rem;
            border-radius: 4px;
        }
        .modal-close:hover {
            background-color: #f0f0f0;
        }
        .modal-body {
            padding: 2rem;
        }
        .modal-footer {
            padding: 1.5rem;
            border-top: 1px solid #E8D5F2;
            display: flex;
            gap: 1rem;
            justify-content: flex-end;
            flex-wrap: wrap;
        }
        /* Invoice Detail Styles */
        .invoice-header-detail {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            margin-bottom: 2rem;
            padding-bottom: 2rem;
            border-bottom: 2px solid #E8D5F2;
        }
        .invoice-info h3 {
            color: #B595D8;
            margin-bottom: 1rem;
        }
        .bookshop-info {
            text-align: right;
        }
        .bookshop-info h4 {
            color: #333;
            margin-bottom: 0.5rem;
        }
        .customer-detail {
            margin-bottom: 2rem;
            padding: 1rem;
            background-color: #f8f9fa;
            border-radius: 8px;
        }
        .customer-detail h4 {
            color: #333;
            margin-bottom: 1rem;
        }
        .invoice-items {
            margin-bottom: 2rem;
        }
        .items-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 1rem;
        }
        .items-table th,
        .items-table td {
            padding: 0.75rem;
            text-align: left;
            border-bottom: 1px solid #E8D5F2;
        }
        .items-table th {
            background-color: #f8f9fa;
            font-weight: 600;
        }
        .invoice-totals {
            max-width: 300px;
            margin-left: auto;
            border-top: 2px solid #E8D5F2;
            padding-top: 1rem;
        }
        .total-row {
            display: flex;
            justify-content: space-between;
            padding: 0.5rem 0;
        }
        .total-row.discount {
            color: #4CAF50;
        }
        .total-row.final {
            border-top: 2px solid #E8D5F2;
            margin-top: 0.5rem;
            padding-top: 1rem;
            font-size: 1.1rem;
        }
        .payment-info,
        .invoice-notes {
            margin-bottom: 2rem;
            padding: 1rem;
            background-color: #f8f9fa;
            border-radius: 8px;
        }
        .payment-info h4,
        .invoice-notes h4 {
            color: #333;
            margin-bottom: 1rem;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            .content-area {
                padding: 1rem;
                gap: 1rem;
            }
            .page-header {
                flex-direction: column;
                align-items: stretch;
                margin-bottom: 0.5rem;
            }
            .header-actions {
                justify-content: stretch;
            }
            .header-actions .btn {
                flex: 1;
                justify-content: center;
            }
            .filter-group {
                flex-direction: column;
            }
            .search-input,
            .filter-select {
                width: 100%;
            }
            .invoice-stats {
                grid-template-columns: 1fr;
            }
            .invoice-header-detail {
                grid-template-columns: 1fr;
                gap: 1rem;
            }
            .bookshop-info {
                text-align: left;
            }
            .pagination-container {
                flex-direction: column;
                gap: 1rem;
            }
            .action-buttons {
                flex-wrap: wrap;
            }
            .invoice-filters {
                padding: 0.75rem;
                margin-bottom: 0.25rem; /* Tighter spacing on mobile */
            }
        }
    </style>
</head>
<body>
    <!-- Invoice Management Content -->
    <div class="content-area">
        <!-- Page Header -->
        <div class="page-header">
            <h1 class="page-title">Invoice Management</h1>
            <div class="header-actions">
                <button class="btn btn-primary" onclick="showCreateInvoice()">
                    <span class="btn-icon">📄</span>
                    Create New Invoice
                </button>
                <button class="btn btn-secondary" onclick="exportInvoices()">
                    <span class="btn-icon">📊</span>
                    Export Report
                </button>
            </div>
        </div>
        <!-- Invoice Statistics -->
        <div class="invoice-stats">
            <div class="stat-card">
                <div class="stat-icon revenue">💰</div>
                <div class="stat-content">
                    <h3 id="totalInvoiceAmount">$0</h3>
                    <p>Total Invoice Amount</p>
                    <small class="stat-change positive">This month</small>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon pending">⏳</div>
                <div class="stat-content">
                    <h3 id="pendingInvoices">0</h3>
                    <p>Pending Invoices</p>
                    <small class="stat-change neutral">Awaiting payment</small>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon paid">✅</div>
                <div class="stat-content">
                    <h3 id="paidInvoices">0</h3>
                    <p>Paid Invoices</p>
                    <small class="stat-change positive">This month</small>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon overdue">⚠️</div>
                <div class="stat-content">
                    <h3 id="overdueInvoices">0</h3>
                    <p>Overdue Invoices</p>
                    <small class="stat-change negative">Needs attention</small>
                </div>
            </div>
        </div>
        <!-- Invoice Table -->
        <div class="invoice-table-container">
            <div class="table-header">
                <h2 class="section-title">
                    <span class="section-icon">📋</span>
                    Invoice List
                </h2>
                <div class="table-actions">
                    <button class="btn btn-sm btn-outline" onclick="refreshInvoices()">
                        <span class="btn-icon">🔄</span>
                        Refresh
                    </button>
                </div>
            </div>
            <!-- Invoice Filters and Search -->
            <div class="invoice-filters">
                <div class="filter-group">
                    <input type="text" class="search-input" placeholder="Search invoices..." id="invoiceSearch">
                    <select class="filter-select" id="statusFilter">
                        <option value="">All Status</option>
                        <option value="paid">Paid</option>
                        <option value="pending">Pending</option>
                        <option value="overdue">Overdue</option>
                        <option value="cancelled">Cancelled</option>
                    </select>
                    <select class="filter-select" id="dateFilter">
                        <option value="">All Dates</option>
                        <option value="today">Today</option>
                        <option value="week">This Week</option>
                        <option value="month">This Month</option>
                        <option value="custom">Custom Range</option>
                    </select>
                    <button class="btn btn-outline" onclick="clearFilters()">Clear Filters</button>
                </div>
            </div>
            <div class="table-wrapper">
                <table class="invoice-table">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox" id="selectAll" onchange="toggleSelectAll()">
                            </th>
                            <th>Invoice #</th>
                            <th>Customer</th>
                            <th>Date</th>
                            <th>Due Date</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="invoiceTableBody">
                        <!-- Invoices will be dynamically loaded here -->
                    </tbody>
                </table>
            </div>
            <!-- Pagination -->
            <div class="pagination-container">
                <div class="pagination-info">
                    Showing 1-10 of 45 invoices
                </div>
                <div class="pagination">
                    <button class="pagination-btn" disabled>Previous</button>
                    <button class="pagination-btn active">1</button>
                    <button class="pagination-btn">2</button>
                    <button class="pagination-btn">3</button>
                    <button class="pagination-btn">Next</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Invoice Detail Modal -->
    <div id="invoiceModal" class="modal">
        <div class="modal-content invoice-detail">
            <div class="modal-header">
                <h2>Invoice Details</h2>
                <button class="modal-close" onclick="closeInvoiceModal()">&times;</button>
            </div>
            <div class="modal-body">
                <div class="invoice-header-detail">
                    <div class="invoice-info">
                        <h3 id="modalInvoiceNumber">Invoice #INV-001</h3>
                        <p>Issue Date: <span id="modalIssueDate">2024-01-15</span></p>
                        <p>Due Date: <span id="modalDueDate">2024-01-30</span></p>
                        <p>Status: <span id="modalStatus" class="status-badge paid">Paid</span></p>
                    </div>
                    <div class="bookshop-info">
                        <h4>BookShop Pro</h4>
                        <p>123 Main Street<br>
                        City, State 12345<br>
                        Phone: (555) 123-4567<br>
                        Email: info@bookshoppro.com</p>
                    </div>
                </div>
                <div class="customer-detail">
                    <h4>Bill To:</h4>
                    <div id="modalCustomerInfo">
                        <strong>John Smith</strong><br>
                        456 Oak Avenue<br>
                        City, State 67890<br>
                        Phone: (555) 987-6543<br>
                        Email: john.smith@email.com
                    </div>
                </div>
                <div class="invoice-items">
                    <h4>Items:</h4>
                    <table class="items-table">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Description</th>
                                <th>Qty</th>
                                <th>Price</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody id="modalItemsTable">
                            <!-- Items will be dynamically loaded here -->
                        </tbody>
                    </table>
                    <div class="invoice-totals">
                        <div class="total-row">
                            <span>Subtotal:</span>
                            <span id="modalSubtotal">$142.45</span>
                        </div>
                        <div class="total-row">
                            <span>Tax (8%):</span>
                            <span id="modalTax">$11.40</span>
                        </div>
                        <div class="total-row">
                            <span>Shipping:</span>
                            <span id="modalShipping">$5.99</span>
                        </div>
                        <div class="total-row discount">
                            <span>Discount (10%):</span>
                            <span id="modalDiscount">-$14.24</span>
                        </div>
                        <div class="total-row final">
                            <span><strong>Total Amount:</strong></span>
                            <span id="modalTotal"><strong>$145.60</strong></span>
                        </div>
                    </div>
                </div>
                <div class="payment-info">
                    <h4>Payment Information:</h4>
                    <p>Payment Method: <span id="modalPaymentMethod">Credit Card (**** **** **** 1234)</span></p>
                    <p>Transaction ID: <span id="modalTransactionId">TXN-789456123</span></p>
                    <p>Payment Date: <span id="modalPaymentDate">2024-01-16</span></p>
                </div>
                <div class="invoice-notes">
                    <h4>Notes:</h4>
                    <p id="modalNotes">Thank you for your business! Please contact us if you have any questions about this invoice.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" onclick="printInvoice()">Print Invoice</button>
                <button class="btn btn-secondary" onclick="sendInvoiceEmail()">Send Email</button>
                <button class="btn btn-outline" onclick="editInvoice()">Edit Invoice</button>
                <button class="btn btn-outline" onclick="closeInvoiceModal()">Close</button>
            </div>
        </div>
    </div>

    <script>
        // Invoice Management JavaScript Functions
        function initializeInvoiceManagement() {
            loadInvoiceStats();
            loadInvoiceTable();
            setupEventListeners();
        }

        function loadInvoiceStats() {
            const stats = {
                totalAmount: 15847.25,
                pending: 12,
                paid: 78,
                overdue: 5
            };
            animateValue('totalInvoiceAmount', 0, stats.totalAmount, 1500, true);
            animateValue('pendingInvoices', 0, stats.pending, 1200);
            animateValue('paidInvoices', 0, stats.paid, 1000);
            animateValue('overdueInvoices', 0, stats.overdue, 1300);
        }

        function animateValue(id, start, end, duration, isCurrency) {
            let startTimestamp = null;
            const step = (timestamp) => {
                if (!startTimestamp) startTimestamp = timestamp;
                const progress = Math.min((timestamp - startTimestamp) / duration, 1);
                const value = start + progress * (end - start);
                document.getElementById(id).textContent = isCurrency ? 
                    '$' + value.toFixed(2) : Math.floor(value);
                if (progress < 1) {
                    requestAnimationFrame(step);
                }
            };
            requestAnimationFrame(step);
        }

        function loadInvoiceTable() {
            const invoices = [
                { id: 'INV-001', customer: 'John Smith', email: 'john.smith@email.com', date: '2024-01-15', dueDate: '2024-01-30', amount: 245.50, status: 'paid' },
                { id: 'INV-002', customer: 'Sarah Johnson', email: 'sarah.j@email.com', date: '2024-01-18', dueDate: '2024-02-02', amount: 189.99, status: 'pending' },
                { id: 'INV-003', customer: 'Michael Brown', email: 'm.brown@email.com', date: '2024-01-10', dueDate: '2024-01-25', amount: 312.75, status: 'overdue' }
            ];
            const tableBody = document.getElementById('invoiceTableBody');
            tableBody.innerHTML = '';
            invoices.forEach(invoice => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td><input type="checkbox" class="invoice-checkbox" value="${invoice.id}"></td>
                    <td><span class="invoice-number">${invoice.id}</span></td>
                    <td>
                        <div class="customer-info">
                            <strong>${invoice.customer}</strong>
                            <small>${invoice.email}</small>
                        </div>
                    </td>
                    <td>${invoice.date}</td>
                    <td>${invoice.dueDate}</td>
                    <td><span class="amount">$${invoice.amount.toFixed(2)}</span></td>
                    <td><span class="status-badge ${invoice.status}">${invoice.status.charAt(0).toUpperCase() + invoice.status.slice(1)}</span></td>
                    <td>
                        <div class="action-buttons">
                            <button class="btn-icon-sm" onclick="viewInvoice('${invoice.id}')" title="View">👁️</button>
                            <button class="btn-icon-sm" onclick="editInvoice('${invoice.id}')" title="Edit">✏️</button>
                            <button class="btn-icon-sm" onclick="printInvoice('${invoice.id}')" title="Print">🖨️</button>
                            <button class="btn-icon-sm" onclick="sendInvoice('${invoice.id}')" title="Send">📧</button>
                        </div>
                    </td>
                `;
                tableBody.appendChild(row);
            });
        }

        function setupEventListeners() {
            document.getElementById('invoiceSearch').addEventListener('input', filterInvoices);
            document.getElementById('statusFilter').addEventListener('change', filterInvoices);
            document.getElementById('dateFilter').addEventListener('change', filterInvoices);
            document.getElementById('selectAll').addEventListener('change', toggleSelectAll);
        }

        function filterInvoices() {
            const searchTerm = document.getElementById('invoiceSearch').value.toLowerCase();
            const statusFilter = document.getElementById('statusFilter').value;
            const dateFilter = document.getElementById('dateFilter').value;
            loadInvoiceTable(); // Simplified for demo
        }

        function toggleSelectAll() {
            const selectAll = document.getElementById('selectAll');
            const checkboxes = document.querySelectorAll('.invoice-checkbox');
            checkboxes.forEach(checkbox => {
                checkbox.checked = selectAll.checked;
            });
        }

        function viewInvoice(id) {
            const invoice = {
                id: id,
                customer: 'John Smith',
                address: '456 Oak Avenue, City, State 67890',
                phone: '(555) 987-6543',
                email: 'john.smith@email.com',
                date: '2024-01-15',
                dueDate: '2024-01-30',
                status: 'paid',
                items: [
                    { name: 'The Great Gatsby', description: 'F. Scott Fitzgerald - Paperback', qty: 2, price: 24.99, total: 49.98 },
                    { name: 'To Kill a Mockingbird', description: 'Harper Lee - Hardcover', qty: 1, price: 32.50, total: 32.50 },
                    { name: '1984', description: 'George Orwell - Paperback', qty: 3, price: 19.99, total: 59.97 }
                ],
                subtotal: 142.45,
                tax: 11.40,
                shipping: 5.99,
                discount: 14.24,
                total: 145.60,
                paymentMethod: 'Credit Card (**** **** **** 1234)',
                transactionId: 'TXN-789456123',
                paymentDate: '2024-01-16',
                notes: 'Thank you for your business! Please contact us if you have any questions about this invoice.'
            };
            document.getElementById('modalInvoiceNumber').textContent = `Invoice #${invoice.id}`;
            document.getElementById('modalIssueDate').textContent = invoice.date;
            document.getElementById('modalDueDate').textContent = invoice.dueDate;
            document.getElementById('modalStatus').textContent = invoice.status.charAt(0).toUpperCase() + invoice.status.slice(1);
            document.getElementById('modalStatus').className = `status-badge ${invoice.status}`;
            document.getElementById('modalCustomerInfo').innerHTML = `
                <strong>${invoice.customer}</strong><br>
                ${invoice.address}<br>
                Phone: ${invoice.phone}<br>
                Email: ${invoice.email}
            `;
            const itemsTable = document.getElementById('modalItemsTable');
            itemsTable.innerHTML = '';
            invoice.items.forEach(item => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${item.name}</td>
                    <td>${item.description}</td>
                    <td>${item.qty}</td>
                    <td>$${item.price.toFixed(2)}</td>
                    <td>$${item.total.toFixed(2)}</td>
                `;
                itemsTable.appendChild(row);
            });
            document.getElementById('modalSubtotal').textContent = `$${invoice.subtotal.toFixed(2)}`;
            document.getElementById('modalTax').textContent = `$${invoice.tax.toFixed(2)}`;
            document.getElementById('modalShipping').textContent = `$${invoice.shipping.toFixed(2)}`;
            document.getElementById('modalDiscount').textContent = `-$${invoice.discount.toFixed(2)}`;
            document.getElementById('modalTotal').textContent = `$${invoice.total.toFixed(2)}`;
            document.getElementById('modalPaymentMethod').textContent = invoice.paymentMethod;
            document.getElementById('modalTransactionId').textContent = invoice.transactionId;
            document.getElementById('modalPaymentDate').textContent = invoice.paymentDate;
            document.getElementById('modalNotes').textContent = invoice.notes;
            document.getElementById('invoiceModal').style.display = 'block';
        }

        function editInvoice(id) {
            console.log(`Edit invoice ${id}`);
        }

        function printInvoice(id) {
            console.log(`Print invoice ${id}`);
            window.print();
        }

        function sendInvoice(id) {
            console.log(`Send invoice ${id}`);
        }

        function closeInvoiceModal() {
            document.getElementById('invoiceModal').style.display = 'none';
        }

        function showCreateInvoice() {
            console.log('Show create invoice form');
        }

        function exportInvoices() {
            console.log('Export invoices');
        }

        function refreshInvoices() {
            loadInvoiceTable();
        }

        function clearFilters() {
            document.getElementById('invoiceSearch').value = '';
            document.getElementById('statusFilter').value = '';
            document.getElementById('dateFilter').value = '';
            loadInvoiceTable();
        }

        // Initialize on page load
        window.onload = initializeInvoiceManagement;
    </script>
</body>
</html>