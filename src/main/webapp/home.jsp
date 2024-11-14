<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        body {
            padding-top: 70px;
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

        /* Hero Section */
        .hero-section {
            height: calc(100vh - 70px);
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                        url('https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
            position: relative;
        }

        .hero-content {
            max-width: 800px;
            padding: 2rem;
            z-index: 2;
        }

        .hero-content h1 {
            font-size: 4rem;
            margin-bottom: 1.5rem;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .hero-content p {
            font-size: 1.5rem;
            margin-bottom: 2.5rem;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
        }

        .cta-button {
            background: var(--primary);
            color: white;
            padding: 1rem 3rem;
            border: none;
            border-radius: 50px;
            font-size: 1.2rem;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .cta-button:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        /* Welcome Bar */
        .welcome-bar {
            background: var(--primary);
            color: white;
            padding: 1rem 2rem;
            text-align: right;
            font-weight: 500;
        }

        /* Featured Destinations */
        .section {
            padding: 5rem 2rem;
        }

        .section-light {
            background: var(--gray-50);
        }

        .section-dark {
            background: var(--gray-700);
            color: white;
        }

        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }

        .section-title h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: inherit;
        }

        .section-title p {
            font-size: 1.2rem;
            color: inherit;
            opacity: 0.9;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .destination-card {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            background: white;
        }

        .destination-card:hover {
            transform: translateY(-10px);
        }

        .destination-image {
            height: 250px;
            background-size: cover;
            background-position: center;
        }

        .destination-details {
            padding: 1.5rem;
        }

        .destination-title {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: var(--gray-700);
        }

        .destination-location {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--gray-700);
            margin-bottom: 1rem;
        }

        .destination-price {
            font-weight: 600;
            color: var(--primary);
            font-size: 1.2rem;
        }

        /* Promotions Section */
        .promotion-banner {
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
                        url('https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80');
            background-size: cover;
            background-position: center;
            padding: 4rem 2rem;
            text-align: center;
            color: white;
        }

        .promotion-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .promotion-title {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .promotion-text {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

        /* Reviews Section */
        .review-card {
            background: white;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .reviewer {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1rem;
        }

        .reviewer-image {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
        }

        .reviewer-info h4 {
            margin: 0;
            color: var(--gray-700);
        }

        .reviewer-info p {
            margin: 0;
            color: var(--gray-700);
            opacity: 0.8;
        }

        .review-text {
            color: var(--gray-700);
            font-style: italic;
            margin-bottom: 1rem;
        }

        .review-rating {
            color: #FFD700;
        }

        /* Popular Locations */
        .location-card {
            position: relative;
            height: 300px;
            border-radius: 15px;
            overflow: hidden;
        }

        .location-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .location-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 2rem;
            background: linear-gradient(transparent, rgba(0,0,0,0.8));
            color: white;
        }

        .location-name {
            font-size: 1.5rem;
            margin-bottom: 0.5rem;
        }

        .location-properties {
            font-size: 1rem;
            opacity: 0.9;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }

            .hero-content p {
                font-size: 1.2rem;
            }

            .grid {
                grid-template-columns: 1fr;
            }

            .section {
                padding: 3rem 1rem;
            }
        }
    </style>
</head>
<body>
  <jsp:include page="mainnavbar.jsp" />

    

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h1>Your Perfect Getaway Awaits</h1>
            <p>Discover unique homestays and create unforgettable memories</p>
            <a href="${pageContext.request.contextPath}/touristlogin" class="cta-button">Start Your Journey</a>
        </div>
    </section>

    <!-- Featured Destinations -->
    <section class="section section-light">
        <div class="section-title">
            <h2>Featured Destinations</h2>
            <p>Handpicked accommodations for your next adventure</p>
        </div>
        <div class="grid">
            <div class="destination-card">
                <div class="destination-image" style="background-image: url('https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')"></div>
                <div class="destination-details">
                    <h3 class="destination-title">Luxury Villa with Pool</h3>
                    <p class="destination-location"><i class="fas fa-map-marker-alt"></i> Goa, India</p>
                    <p class="destination-price">₹12,000 per night</p>
                </div>
            </div>
            <div class="destination-card">
                <div class="destination-image" style="background-image: url('https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')"></div>
                <div class="destination-details">
                    <h3 class="destination-title">Mountain View Cottage</h3>
                    <p class="destination-location"><i class="fas fa-map-marker-alt"></i> Manali, India</p>
                    <p class="destination-price">₹8,000 per night</p>
                </div>
            </div>
            <div class="destination-card">
                <div class="destination-image" style="background-image: url('https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')"></div>
                <div class="destination-details">
                    <h3 class="destination-title">Heritage Haveli</h3>
                    <p class="destination-location"><i class="fas fa-map-marker-alt"></i> Jaipur, India</p>
                    <p class="destination-price">₹15,000 per night</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Promotion Banner -->
    <section class="promotion-banner">
        <div class="promotion-content">
            <h2 class="promotion-title">Special Summer Offer!</h2>
            <p class="promotion-text">Get 20% off on all bookings made before June 30th</p>
            <a href="${pageContext.request.contextPath}/offers" class="cta-button">View Offers</a>
        </div>
    </section>

    <!-- Popular Indian Destinations -->
    <section class="section">
        <div class="section-title">
            <h2>Popular Destinations in India</h2>
            <p>Explore the best locations across the country</p>
        </div>
        <div class="grid">
            <div class="location-card">
                <img src="https://images.unsplash.com/photo-1587474260584-136574528ed5?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="location-image" alt="Kerala Backwaters">
                <div class="location-overlay">
                    <h3 class="location-name">Kerala Backwaters</h3>
                    <p class="location-properties">50+ properties</p>
                </div>
            </div>
            <div class="location-card">
                <img src="https://images.unsplash.com/photo-1477587458883-47145ed94245?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="location-image" alt="Himalayan Retreats">
                <div class="location-overlay">
                    <h3 class="location-name">Himalayan Retreats</h3>
                    <p class="location-properties">75+ properties</p>
                </div>
            </div>
            <div class="location-card">
                <img src="https://images.unsplash.com/photo-1587474260584-136574528ed5?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="location-image" alt="Rajasthan Palaces">
                <div class="location-overlay">
                    <h3 class="location-name">Rajasthan Palaces</h3>
                    <p class="location-properties">40+ properties</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Guest Reviews -->
    <section class="section section-light">
        <div class="section-title">
            <h2>What Our Guests Say</h2>
            <p>Real experiences from real travelers</p>
        </div>
        <div class="grid">
            <div class="review-card">
                <div class="reviewer">
                    <img src="https://randomuser.me/api/portraits/women/1.jpg" alt="Sarah" class="reviewer-image">
                    <div class="reviewer-info">
                        <h4>Sarah Johnson</h4>
                        <p>Stayed in Goa</p>
                    </div>
                </div>
                <p class="review-text">"Amazing experience! The villa exceeded our expectations. The host was incredibly helpful and the location was perfect."</p>
                <div class="review-rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
            </div>
            <div class="review-card">
                <div class="reviewer">
                    <img src="https://randomuser.me/api/portraits/men/1.jpg" alt="Michael" class="reviewer-image">
                    <div class="reviewer-info">
                        <h4>Michael Chen</h4>
                        <p>Stayed in Manali</p>
                    </div>
                </div>
                <p class="review-text">"The mountain views were breathtaking! Perfect place for a peaceful retreat. Will definitely come back."</p>
                <div class="review-rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
            <div class="review-card">
                <div class="reviewer">
                    <img src="https://randomuser.me/api/portraits/women/2.jpg" alt="Emma" class="reviewer-image">
                    <div class="reviewer-info">
                        <h4>Emma Wilson</h4>
                        <p>Stayed in Jaipur</p>
                    </div>
                </div>
                <p class="review-text">"Living in a heritage haveli was a unique experience. The architecture and hospitality were outstanding!"</p>
                <div class="review-rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
            </div>
        </div>
    </section>

    <script>
        // Add smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Add animation on scroll
        window.addEventListener('scroll', () => {
            document.querySelectorAll('.destination-card, .review-card, .location-card').forEach(card => {
                const cardTop = card.getBoundingClientRect().top;
                const windowHeight = window.innerHeight;
                
                if (cardTop < windowHeight * 0.8) {
                    card.style.opacity = '1';
                    card.style.transform = 'translateY(0)';
                }
            });
        });
    </script>
</body>
</html>