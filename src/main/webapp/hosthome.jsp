<%@page import="com.klu.jfsd.model.Host"%>
<%@page import="com.klu.jfsd.model.Tourist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Host c=(Host)session.getAttribute("host");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Host Dashboard | Travel & HomeStay</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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

        .navbar {
            background: white;
            padding: 1rem 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .nav-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1rem;
        }

        .nav-brand {
            font-size: 1.5rem;
            font-weight: 600;
            color: var(--primary);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
        }

        .nav-item {
            color: var(--gray-700);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-item:hover {
            color: var(--primary);
        }

        .welcome-bar {
            background: var(--primary);
            color: white;
            padding: 1rem 2rem;
            text-align: right;
            margin-top: 70px;
        }

        .dashboard-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 2rem;
        }

        .quick-actions {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 2rem;
        }

        .quick-actions-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1rem;
            margin-top: 1rem;
        }

        .quick-action-btn {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem;
            background: var(--gray-50);
            border-radius: 8px;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .quick-action-btn:hover {
            background: var(--primary);
            color: white;
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
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .stat-card h3 {
            color: var(--gray-700);
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
        }

        .stat-card .value {
            font-size: 2rem;
            font-weight: 600;
            color: var(--primary);
        }

        .dashboard-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 2rem;
        }

        .chart-container {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .bookings-list {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .booking-item {
            padding: 1rem 0;
            border-bottom: 1px solid var(--gray-100);
        }

        .booking-item:last-child {
            border-bottom: none;
        }

        .booking-item h4 {
            color: var(--gray-700);
            margin-bottom: 0.5rem;
        }

        .booking-meta {
            display: flex;
            justify-content: space-between;
            color: var(--gray-700);
            font-size: 0.9rem;
        }

        .notification-center {
            position: fixed;
            top: 80px;
            right: 20px;
            width: 300px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            z-index: 1000;
            display: none;
        }

        .notification-header {
            padding: 1rem;
            border-bottom: 1px solid var(--gray-100);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .notification-list {
            max-height: 400px;
            overflow-y: auto;
        }

        .notification-item {
            padding: 1rem;
            border-bottom: 1px solid var(--gray-100);
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .notification-item:hover {
            background-color: var(--gray-50);
        }

        .notification-item.unread {
            background-color: #F0F9FF;
        }

        .calendar-widget {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-top: 2rem;
        }

        .calendar-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1rem;
        }

        .calendar-grid {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 0.5rem;
            text-align: center;
        }

        .calendar-day {
            padding: 0.5rem;
            border-radius: 5px;
            cursor: pointer;
        }

        .calendar-day.has-booking {
            background-color: #FEF3C7;
        }

        .calendar-day.today {
            background-color: var(--primary);
            color: white;
        }

        .reviews-section {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-top: 2rem;
        }

        .review-item {
            padding: 1rem 0;
            border-bottom: 1px solid var(--gray-100);
        }

        .review-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 0.5rem;
        }

        .review-rating {
            color: #FFD700;
        }

        .review-property {
            color: var(--gray-700);
            font-size: 0.9rem;
        }

        .review-content {
            color: var(--gray-700);
            margin: 0.5rem 0;
        }

        .review-meta {
            font-size: 0.875rem;
            color: var(--gray-700);
        }

        .property-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .property-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .property-image {
            height: 200px;
            background-size: cover;
            background-position: center;
        }

        .property-details {
            padding: 1.5rem;
        }

        .property-status {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 15px;
            font-size: 0.875rem;
            margin-bottom: 0.5rem;
        }

        .status-active {
            background: #DEF7EC;
            color: #03543F;
        }

        .status-pending {
            background: #FEF3C7;
            color: #92400E;
        }

        .action-buttons {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .btn {
            padding: 0.5rem 1rem;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-secondary {
            background: var(--gray-100);
            color: var(--gray-700);
        }

        @media (max-width: 768px) {
            .dashboard-grid {
                grid-template-columns: 1fr;
            }
            
            .stats-grid {
                grid-template-columns: 1fr;
            }

            .notification-center {
                width: 100%;
                right: 0;
                top: 70px;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="nav-content">
            <a href="${pageContext.request.contextPath}/" class="nav-brand">
                <i class="fas fa-home"></i> Host Dashboard
            </a>
            <div class="nav-links">
                <a href="${pageContext.request.contextPath}/properties" class="nav-item">My Properties</a>
                <a href="${pageContext.request.contextPath}/bookings" class="nav-item">Bookings</a>
                <a href="${pageContext.request.contextPath}/earnings" class="nav-item">Earnings</a>
                <a href="${pageContext.request.contextPath}/profile" class="nav-item">Profile</a>
                <a href="${pageContext.request.contextPath}/hostlogin" class="nav-item">Logout</a>
            </div>
        </div>
    </nav>

    <div class="welcome-bar">
        <% String hostEmail = (String) session.getAttribute("hemail"); %>
        Welcome, <%=c.getHname()%>
    </div>

    <div class="dashboard-container">
        <div class="quick-actions">
            <h3>Quick Actions</h3>
            <div class="quick-actions-grid">
                <button class="quick-action-btn">
                    <i class="fas fa-plus"></i>
                    Add New Property
                </button>
                <button class="quick-action-btn">
                    <i class="fas fa-calendar-check"></i>
                    Manage Bookings
                </button>
                <button class="quick-action-btn">
                    <i class="fas fa-cog"></i>
                    Settings
                </button>
                <button class="quick-action-btn" onclick="toggleNotifications()">
                    <i class="fas fa-bell"></i>
                    Notifications
                </button>
            </div>
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <h3>Active Listings</h3>
                <div class="value">4</div>
            </div>
            <div class="stat-card">
                <h3>Total Bookings</h3>
                <div class="value">28</div>
            </div>
            <div class="stat-card">
                <h3>Monthly Earnings</h3>
                <div class="value">₹45,000</div>
            </div>
            <div class="stat-card">
                <h3>Average Rating</h3>
                <div class="value">4.8 <i class="fas fa-star" style="color: #FFD700; font-size: 1.5rem;"></i></div>
            </div>
        </div>

        <div class="dashboard-grid">
            <div class="chart-container">
                <h3>Earnings Overview</h3>
                <canvas id="earningsChart"></canvas>
            </div>

            <div class="bookings-list">
                <h3>Recent Bookings</h3>
                <div class="booking-item">
                    <h4>Mountain View Villa</h4>
                    <div class="booking-meta">
                        <span><i class="far fa-calendar"></i> Mar 15 - Mar 20</span>
                        <span>₹25,000</span>
                    </div>
                </div>
                <div class="booking-item">
                    <h4>Lakeside Cottage</h4>
                    <div class="booking-meta">
                        <span><i class="far fa-calendar"></i> Mar 22 - Mar 25</span>
                        <span>₹15,000</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="calendar-widget">
            <div class="calendar-header">
                <h3>Booking Calendar</h3>
                <div>
                    <button class="btn btn-secondary">
                        <i class="fas fa-chevron-left"></i>
                    </button>
                    <span style="margin: 0 1rem;">March 2024</span>
                    <button class="btn btn-secondary">
                        <i class="fas fa-chevron-right"></i>
                    </button>
                </div>
            </div>
            <div class="calendar-grid">
                <!-- Calendar days will be populated by JavaScript -->
            </div>
        </div>

        <div class="reviews-section">
            <h3>Recent Reviews</h3>
            <div class="review-item">
                <div class="review-header">
                    <div class="review-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="review-property">Mountain View Villa</div>
                </div>
                <p class="review-content">"Amazing property with breathtaking views. The host was very accommodating and helpful."</p>
                <div class="review-meta">
                    <span>By John D.</span> • <span>2 days ago</span>
                </div>
            </div>
            <div class="review-item">
                <div class="review-header">
                    <div class="review-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="review-property">Lakeside Cottage</div>
                </div>
                <p class="review-content">"Great location and comfortable stay. Would recommend for a peaceful getaway."</p>
                <div class="review-meta">
                    <span>By Sarah M.</span> • <span>1 week ago</span>
                </div>
            </div>
        </div>

        <h2 style="margin: 2rem 0;">Your Properties</h2>
        <div class="property-grid">
            <div class="property-card">
                <div class="property-image" style="background-image: url('https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&q=80')"></div>
                <div class="property-details">
                    <span class="property-status status-active">Active</span>
                    <h3>Mountain View Villa</h3>
                    <p><i class="fas fa-map-marker-alt"></i> Manali, India</p>
                    <div class="action-buttons">
                        <button class="btn btn-primary">Edit Listing</button>
                        <button class="btn btn-secondary">View Details</button>
                    </div>
                </div>
            </div>
            <div class="property-card">
                <div class="property-image" style="background-image: url('https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&q=80')"></div>
                <div class="property-details">
                    <span class="property-status status-pending">Pending Review</span>
                    <h3>Lakeside Cottage</h3>
                    <p><i class="fas fa-map-marker-alt"></i> Udaipur, India</p>
                    <div class="action-buttons">
                        <button class="btn btn-primary">Edit Listing</button>
                        <button class="btn btn-secondary">View Details</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="notification-center" id="notificationCenter">
            <div class="notification-header">
                <h3>Notifications</h3>
                <button class="btn btn-secondary" onclick="toggleNotifications()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="notification-list">
                <div class="notification-item unread">
                    <h4>New Booking Request</h4>
                    <p>Mountain View Villa - March 25-30</p>
                    <small>2 minutes ago</small>
                </div>
                <div class="notification-item">
                    <h4>Review Received</h4>
                    <p>New 5-star review for Lakeside Cottage</p>
                    <small>1 hour ago</small>
                </div>
                <div class="notification-item">
                    <h4>Payment Received</h4>
                    <p>₹25,000 payment confirmed</p>
                    <small>Yesterday</small>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Earnings Chart
        const ctx = document.getElementById('earningsChart').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                datasets: [{
                    label: 'Monthly Earnings (₹)',
                    data: [30000, 35000, 45000, 40000, 50000, 45000],
                    borderColor: '#FF385C',
                    tension: 0.4,
                    fill: false
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Toggle Notifications
        function toggleNotifications() {
            const notificationCenter = document.getElementById('notificationCenter');
            notificationCenter.style.display = notificationCenter.style.display === 'none' ? 'block' : 'none';
        }

        // Initialize Calendar
        function initializeCalendar() {
            const calendarGrid = document.querySelector('.calendar-grid');
            const daysInMonth = 31; // March 2024
            const firstDay = 5; // Friday

            // Add day labels
            const days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
            days.forEach(day => {
                const dayLabel = document.createElement('div');
                dayLabel.className = 'calendar-day';
                dayLabel.textContent = day;
                dayLabel.style.fontWeight = 'bold';
                calendarGrid.appendChild(dayLabel);
            });

            // Add empty cells for days before the 1st
            for (let i = 0; i < firstDay; i++) {
                const emptyDay = document.createElement('div');
                emptyDay.className = 'calendar-day';
                calendarGrid.appendChild(emptyDay);
            }

            // Add days of the month
            for (let i = 1; i <= daysInMonth; i++) {
                const dayCell = document.createElement('div');
                dayCell.className = 'calendar-day';
                if (i === 15) dayCell.classList.add('today');
                if ([5, 12, 19, 26].includes(i)) dayCell.classList.add('has-booking');
                dayCell.textContent = i;
                calendarGrid.appendChild(dayCell);
            }
        }

        // Initialize calendar when page loads
        document.addEventListener('DOMContentLoaded', initializeCalendar);
    </script>
</body>
</html>