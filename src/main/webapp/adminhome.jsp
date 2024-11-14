<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Travel & HomeStay</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #FF385C;
            --primary-dark: #E31C5F;
            --secondary: #00A699;
            --background: #FFFFFF;
            --gray-50: #F9FAFB;
            --gray-100: #F3F4F6;
            --gray-700: #374151;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: var(--gray-50);
            padding-top: 70px;
        }

        .dashboard-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
        }

        .dashboard-header {
            background: white;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            margin-bottom: 2rem;
        }

        .dashboard-header h1 {
            color: var(--gray-700);
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .stat-card h3 {
            color: var(--gray-700);
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
        }

        .stat-card .number {
            font-size: 2rem;
            font-weight: 600;
            color: var(--primary);
        }

        .actions-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
        }

        .action-card {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .action-card:hover {
            transform: translateY(-5px);
        }

        .action-icon {
            width: 50px;
            height: 50px;
            background: var(--primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
        }

        .action-icon i {
            color: white;
            font-size: 1.5rem;
        }

        .action-card h3 {
            color: var(--gray-700);
            margin-bottom: 0.5rem;
        }

        .action-card p {
            color: var(--gray-700);
            opacity: 0.8;
            margin-bottom: 1rem;
        }

        .action-link {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background: var(--primary);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .action-link:hover {
            background: var(--primary-dark);
        }

        @media (max-width: 768px) {
            .dashboard-header {
                padding: 1.5rem;
            }

            .dashboard-header h1 {
                font-size: 1.5rem;
            }

            .stat-card .number {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="mainnavbar.jsp" />

    <div class="dashboard-container">
        <div class="dashboard-header">
            <h1>Admin Dashboard</h1>
            <p>Welcome back! Here's an overview of your system.</p>
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <h3>Total Hosts</h3>
                <div class="number">${hostCount}</div>
            </div>
            <div class="stat-card">
                <h3>Total Tourists</h3>
                <div class="number">${touristCount}</div>
            </div>
        </div>

        <div class="actions-grid">
            <div class="action-card">
                <div class="action-icon">
                    <i class="fas fa-users"></i>
                </div>
                <h3>Manage Hosts</h3>
                <p>View, add, update, or remove host accounts</p>
                <a href="viewallhosts" class="action-link">View All Hosts</a>
            </div>

            <div class="action-card">
                <div class="action-icon">
                    <i class="fas fa-user-friends"></i>
                </div>
                <h3>Manage Tourists</h3>
                <p>View, add, update, or remove tourist accounts</p>
                <a href="viewalltourists" class="action-link">View All Tourists</a>
            </div>

            <div class="action-card">
                <div class="action-icon">
                    <i class="fas fa-user-plus"></i>
                </div>
                <h3>Add New Host</h3>
                <p>Register a new host account</p>
                <a href="addhost" class="action-link">Add Host</a>
            </div>

            <div class="action-card">
                <div class="action-icon">
                    <i class="fas fa-user-plus"></i>
                </div>
                <h3>Add New Tourist</h3>
                <p>Register a new tourist account</p>
                <a href="addtourist" class="action-link">Add Tourist</a>
            </div>
        </div>
    </div>
</body>
</html>
