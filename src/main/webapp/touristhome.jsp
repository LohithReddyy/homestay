<%@page import="com.klu.jfsd.model.Tourist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Tourist c=(Tourist)session.getAttribute("tourist");
%>
<%@ page import="com.klu.jfsd.model.Home" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Travel & HomeStay</title>
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
        .destination-image {
    width: 100%; /* Or set a fixed size */
    height: 200px; /* Example height */
    background-size: cover;
    background-position: center;
}
        
         /* Navbar Styles */
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
        

        .hero-section {
            height: 60vh;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                        url('https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&q=80');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
            padding: 0 20px;
        }

        .hero-content {
            max-width: 800px;
        }

        .hero-content h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

        .search-bar {
            background: white;
            padding: 1rem;
            border-radius: 50px;
            display: flex;
            gap: 1rem;
            max-width: 600px;
            margin: 0 auto;
        }

        .search-input {
            flex: 1;
            border: none;
            padding: 0.5rem;
            font-size: 1rem;
        }

        .search-button {
            background: var(--primary);
            color: white;
            border: none;
            padding: 0.5rem 2rem;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
        }

        .featured-section {
            padding: 4rem 2rem;
            background: var(--gray-50);
        }

        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }

        .homestay-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .homestay-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .homestay-card:hover {
            transform: translateY(-5px);
        }

        .homestay-image {
            height: 200px;
            background-size: cover;
            background-position: center;
        }

        .homestay-details {
            padding: 1.5rem;
        }

        .homestay-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .homestay-location {
            color: var(--gray-700);
            margin-bottom: 1rem;
        }

        .homestay-price {
            font-weight: 600;
            color: var(--primary);
        }

        .features-section {
            padding: 4rem 2rem;
            background: white;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .feature-card {
            text-align: center;
            padding: 2rem;
        }

        .feature-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        .welcome-bar {
            background: var(--primary);
            color: white;
            padding: 1rem 2rem;
            text-align: right;
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2rem;
            }

            .search-bar {
                flex-direction: column;
                border-radius: 15px;
            }

            .search-button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    
     <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="nav-content">
            <a href="${pageContext.request.contextPath}/" class="nav-brand">
                <i class="fas fa-home"></i> Travel & HomeStay
            </a>
            <div class="nav-links">
                <a href="${pageContext.request.contextPath}/explore" class="nav-item">Explore</a>
                <a href="${pageContext.request.contextPath}/bookings" class="nav-item">My Bookings</a>
                <a href="${pageContext.request.contextPath}/wishlist" class="nav-item">Wishlist</a>
                <a href="${pageContext.request.contextPath}/touristprofile" class="nav-item">Profile</a>
            </div>
        </div>
    </nav>
    
    
    <div class="welcome-bar">
        <% String touristEmail = (String) session.getAttribute("temail"); %>
        Welcome, <%= c.getTname()%>!
    </div>

    <div class="hero-section">
        <div class="hero-content">
            <h1>Find Your Perfect Homestay, <b><i><%= c.getTname()%>!</i></b></h1>
            <p>Discover unique accommodations and authentic local experiences</p>
            <div class="search-bar">
                <input type="text" class="search-input" placeholder="Where would you like to stay?">
                <button class="search-button">Search</button>
            </div>
        </div>
    </div>

    <div class="featured-section">
    <div class="section-title">
        <h2>Featured Homestays</h2>
        <p>Handpicked accommodations for your next adventure</p>
    </div>
    <div class="homestay-grid">
        <% 
        List<Home> homeList = (List<Home>) request.getAttribute("homeList");
        if (homeList != null && !homeList.isEmpty()) {
            for (Home home : homeList) { 
                String base64Image = null;
                if (home.getImage() != null) {
                    base64Image = "data:image/jpeg;base64," + java.util.Base64.getEncoder().encodeToString(home.getImage());
                } else {
                    System.out.println("Image for home " + home.getName() + " is null");
                }
        %>
        <div class="destination-card">
            <div class="destination-image" 
                 style="background-image: url('<%= base64Image != null ? base64Image : "default-placeholder.jpg" %>')">
            </div>
            <div class="destination-details">
                <h3 class="destination-title"><%= home.getName() %></h3>
                <p class="destination-location"><i class="fas fa-map-marker-alt"></i> <%= home.getLocation() %></p>
                <p class="destination-price">₹<%= home.getPricepernight() %> per night</p>
            </div>
        </div>
        <% 
            } 
        } else { 
        %>
        <p>No destinations available at the moment. Please check back later.</p>
        <% 
        } 
        %>
    </div>
</div>


    <div class="features-section">
        <div class="section-title">
            <h2>Why Choose Our Homestays?</h2>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <i class="fas fa-home feature-icon"></i>
                <h3>Authentic Experience</h3>
                <p>Live like a local with our carefully selected hosts</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-shield-alt feature-icon"></i>
                <h3>Verified Properties</h3>
                <p>All homestays are personally verified for quality</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-heart feature-icon"></i>
                <h3>Personalized Service</h3>
                <p>Get recommendations based on your preferences</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-wallet feature-icon"></i>
                <h3>Best Price Guarantee</h3>
                <p>Find the most competitive rates for your stay</p>
            </div>
        </div>
    </div>
</body>
</html>