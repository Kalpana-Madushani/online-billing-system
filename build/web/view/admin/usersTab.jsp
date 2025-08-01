<%--
    Document : usersTab
    Created on : Jul 30, 2025, 8:49:29 PM
    Author : elegant media
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<main class="content-area">
    <!-- Page Header -->
    <div class="page-header">
        <h1 class="page-title">User Management</h1>
        <p class="page-subtitle">Add and manage system users</p>
    </div>

    <!-- Success Message -->
    <div class="success-message" id="successMessage">
        User added successfully!
    </div>

    <!-- Main Content Layout -->
    <div class="content-layout">
        <!-- Add User Form -->
        <section class="add-user-section">
            <h2 class="form-title">
                <span class="section-icon">➕</span>
                Add New User
            </h2>
            <form id="addUserForm">
                <div class="form-grid">
                    <div class="form-group">
                        <label class="form-label" for="username">Username</label>
                        <input type="text" id="username" class="form-input" placeholder="Enter username" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="password">Password</label>
                        <input type="password" id="password" class="form-input" placeholder="Enter password" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="role">Role</label>
                        <select id="role" class="form-select" required>
                            <option value="">Select Role</option>
                            <option value="cashier">Cashier</option>
                            <option value="stock-keeper">Stock Keeper</option>
                            <option value="manager">Manager</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                </div>
                <button type="submit" class="add-user-btn">
                    Add User
                </button>
            </form>
        </section>

        <!-- Users Table -->
        <section class="users-table-section">
            <div class="section-header">
                <h2 class="section-title">
                    <span class="section-icon">👥</span>
                    All Users
                </h2>
                <input type="text" class="search-box" placeholder="Search users..." id="searchBox">
            </div>
            <table class="users-table" id="usersTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>admin</td>
                        <td><span class="role-badge role-admin">Admin</span></td>
                        <td><span class="status-active">Active</span></td>
                        <td>2024-01-15</td>
                        <td>
                            <div class="actions">
                                <button class="action-btn edit-btn">Edit</button>
                                <button class="action-btn delete-btn">Delete</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>cashier1</td>
                        <td><span class="role-badge role-cashier">Cashier</span></td>
                        <td><span class="status-active">Active</span></td>
                        <td>2024-01-20</td>
                        <td>
                            <div class="actions">
                                <button class="action-btn edit-btn">Edit</button>
                                <button class="action-btn delete-btn">Delete</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td>stockkeeper1</td>
                        <td><span class="role-badge role-stock-keeper">Stock Keeper</span></td>
                        <td><span class="status-active">Active</span></td>
                        <td>2024-01-25</td>
                        <td>
                            <div class="actions">
                                <button class="action-btn edit-btn">Edit</button>
                                <button class="action-btn delete-btn">Delete</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>manager1</td>
                        <td><span class="role-badge role-manager">Manager</span></td>
                        <td><span class="status-inactive">Inactive</span></td>
                        <td>2024-0
2-01</td>
                        <td>
                            <div class="actions">
                                <button class="action-btn edit-btn">Edit</button>
                                <button class="action-btn delete-btn">Delete</button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </div>
</main>

<style>
    /* General content area styles */
    .content-area {
        max-width: 10000px;
        margin: 0 auto;
        flex: 1;
        padding: 2rem;
        overflow-y: auto;
        background-color: #f8f9fa;
        display: flex;
        flex-direction: column;
        gap: 1rem;
        width: 100%;
    }

    .page-header {
        margin-bottom: 0.5rem;
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

    /* Success message styles */
    .success-message {
        display: none;
        background-color: #4CAF50;
        color: white;
        padding: 1rem;
        border-radius: 8px;
        text-align: center;
        font-size: 1rem;
        font-weight: 500;
        margin-bottom: 1.5rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    /* Content layout for side-by-side sections */
    .content-layout {
        display: flex;
        flex-direction: row;
        gap: 2rem;
        width: 100%;
    }

   /* Add user section styles */
.add-user-section {
    background-color: white;
    border-radius: 12px;
    padding: 1.5rem;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    max-width: 600px; /* Increased from 500px */
    flex: 0 0 auto;
    width: 30%;
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
        grid-template-columns: 1fr; /* Single column for compactness */
        gap: 1rem;
        margin-bottom: 1.5rem;
    }

    .form-group {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .form-label {
        font-size: 0.9rem;
        font-weight: 500;
        color: #333;
    }

    .form-input, .form-select {
        padding: 0.75rem;
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        font-size: 0.95rem;
        color: #333;
        background-color: #f8f9fa;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .form-input:focus, .form-select:focus {
        outline: none;
        border-color: #B595D8;
        box-shadow: 0 0 0 3px rgba(181, 149, 216, 0.2);
    }

    .add-user-btn {
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
    }

    .add-user-btn:hover {
        background: linear-gradient(135deg, #C8A8E0, #B595D8);
        transform: translateY(-2px);
    }

   /* Users table section styles */
.users-table-section {
    background-color: white;
    border-radius: 12px;
    width: 900px;
    padding: 1.5rem;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    flex: 1 1 750px; /* Increased from 650px */
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

    .search-box {
        padding: 0.75rem;
        border: 1px solid #E8D5F2;
        border-radius: 8px;
        font-size: 0.95rem;
        width: 200px;
        background-color: #f8f9fa;
        transition: border-color 0.3s ease;
    }

    .search-box:focus {
        outline: none;
        border-color: #B595D8;
    }

    .users-table {
        width: 100%;
        border-collapse: collapse;
        font-size: 0.9rem;
    }

    .users-table th, .users-table td {
        padding: 1rem;
        text-align: left;
        border-bottom: 1px solid #E8D5F2;
    }

    .users-table th {
        background-color: #f8f9fa;
        font-weight: 600;
        color: #333;
    }

    .users-table tr:hover {
        background-color: #E8D5F2;
    }

    .role-badge {
        padding: 0.25rem 0.75rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: 500;
        color: white;
    }

    .role-admin { background: linear-gradient(135deg, #B595D8, #C8A8E0); }
    .role-cashier { background: linear-gradient(135deg, #4CAF50, #45a049); }
    .role-stock-keeper { background: linear-gradient(135deg, #2196F3, #1976D2); }
    .role-manager { background: linear-gradient(135deg, #FF9800, #F57C00); }

    .status-active {
        color: #4CAF50;
        font-weight: 500;
    }

    .status-inactive {
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

    /* Responsive design */
    @media (max-width: 900px) {
        .content-layout {
            flex-direction: column;
        }

        .add-user-section {
            max-width: 100%;
        }

        .form-grid {
            grid-template-columns: 1fr;
        }

        .search-box {
            width: 100%;
        }

        .section-header {
            flex-direction: column;
            align-items: flex-start;
            gap: 0.5rem;
        }
    }

    @media (max-width: 600px) {
        .content-area {
            padding: 1rem;
        }

        .add-user-section {
            max-width: 100%;
        }

        .users-table {
            font-size: 0.8rem;
        }

        .users-table th, .users-table td {
            padding: 0.75rem;
        }

        .action-btn {
            padding: 0.4rem 0.8rem;
            font-size: 0.75rem;
        }
    }
</style>

<script>
    // Sample users data
    let users = [
        { id: '001', username: 'admin', role: 'admin', status: 'active', createdDate: '2024-01-15' },
        { id: '002', username: 'cashier1', role: 'cashier', status: 'active', createdDate: '2024-01-20' },
        { id: '003', username: 'stockkeeper1', role: 'stock-keeper', status: 'active', createdDate: '2024-01-25' },
        { id: '004', username: 'manager1', role: 'manager', status: 'inactive', createdDate: '2024-02-01' }
    ];

    // Form submission
    document.getElementById('addUserForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const role = document.getElementById('role').value;
        if (username && password && role) {
            const newId = String(users.length + 1).padStart(3, '0');
            const newUser = {
                id: newId,
                username: username,
                role: role,
                status: 'active',
                createdDate: new Date().toISOString().split('T')[0]
            };
            users.push(newUser);
            this.reset();
            const successMessage = document.getElementById('successMessage');
            successMessage.style.display = 'block';
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 3000);
            renderUsersTable();
        }
    });

    // Render users table
    function renderUsersTable(filteredUsers = users) {
        const tbody = document.querySelector('#usersTable tbody');
        tbody.innerHTML = '';
        filteredUsers.forEach(user => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td><span class="role-badge role-${user.role}">${user.role.charAt(0).toUpperCase() + user.role.slice(1).replace('-', ' ')}</span></td>
                <td><span class="status-${user.status}">${user.status.charAt(0).toUpperCase() + user.status.slice(1)}</span></td>
                <td>${user.createdDate}</td>
                <td>
                    <div class="actions">
                        <button class="action-btn edit-btn" onclick="editUser('${user.id}')">Edit</button>
                        <button class="action-btn delete-btn" onclick="deleteUser('${user.id}')">Delete</button>
                    </div>
                </td>
            `;
            tbody.appendChild(row);
        });
    }

    // Search functionality
    document.getElementById('searchBox').addEventListener('input', function(e) {
        const searchTerm = e.target.value.toLowerCase();
        const filtered.Uers = users.filter(user =>
            user.username.toLowerCase().includes(searchTerm) ||
            user.role.toLowerCase().includes(searchTerm)
        );
        renderUsersTable(filteredUsers);
    });

    // Edit user function
    function editUser(userId) {
        const user = users.find(u => u.id === userId);
        if (user) {
            document.getElementById('username').value = user.username;
            document.getElementById('role').value = user.role;
            alert(`Editing user: ${user.username}`);
        }
    }

    // Delete user function
    function deleteUser(userId) {
        if (confirm('Are you sure you want to delete this user?')) {
            users = users.filter(u => u.id !== userId);
            renderUsersTable();
        }
    }

    // Initial render
    renderUsersTable();
</script>