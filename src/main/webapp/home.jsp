<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Travel&homestay- Your Perfect Homestay</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
    body {
        font-family: 'Poppins', Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
        color: #484848;
    }

    /* Enhanced Hero Banner */
    .hero-banner {
        position: relative;
        height: 600px;
        overflow: hidden;
    }

    .hero-slider {
        position: relative;
        height: 100%;
    }

    .slide {
        position: absolute;
        width: 100%;
        height: 100%;
        opacity: 0;
        transition: opacity 1s ease-in-out;
    }

    .slide.active {
        opacity: 1;
    }

    .slide img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .hero-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.5));
        z-index: 1;
    }

    .hero-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 2;
        text-align: center;
        width: 80%;
    }

    .hero-heading {
        font-size: 3.5em;
        font-weight: 700;
        color: #fff;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        margin-bottom: 20px;
    }

    .hero-subtext {
        font-size: 1.5em;
        color: #fff;
        margin-bottom: 30px;
    }

    /* Search Section */
    .search-container {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        margin: -50px auto 50px;
        position: relative;
        z-index: 3;
        max-width: 1000px;
    }

    .search-form {
        display: flex;
        gap: 15px;
        flex-wrap: wrap;
    }

    .search-input {
        flex: 1;
        min-width: 200px;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    /* Popular Destinations */
    .destinations {
        padding: 60px 0;
        background: #fff;
    }

    .destination-card {
        position: relative;
        border-radius: 15px;
        overflow: hidden;
        margin-bottom: 30px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        transition: transform 0.3s ease;
    }

    .destination-card:hover {
        transform: translateY(-10px);
    }

    .destination-img {
        width: 100%;
        height: 250px;
        object-fit: cover;
    }

    .destination-info {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 20px;
        background: linear-gradient(transparent, rgba(0,0,0,0.8));
        color: white;
    }

    /* Experience Categories */
    .experiences {
        padding: 60px 0;
        background: #f8f9fa;
    }

    .experience-icon {
        font-size: 2.5em;
        color: #ff385c;
        margin-bottom: 15px;
    }

    /* Reviews Section */
    .reviews {
        padding: 60px 0;
        background: #fff;
    }

    .review-card {
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        margin: 15px;
    }

    .reviewer-img {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        margin-bottom: 15px;
    }

    /* Newsletter Section */
    .newsletter {
        background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80');
        background-size: cover;
        background-position: center;
        padding: 80px 0;
        color: white;
        text-align: center;
    }

    .newsletter input {
        width: 300px;
        padding: 12px;
        border: none;
        border-radius: 5px 0 0 5px;
    }

    .newsletter button {
        padding: 12px 30px;
        background: #ff385c;
        border: none;
        color: white;
        border-radius: 0 5px 5px 0;
    }

    /* Enhanced Footer */
    .footer {
        background: #2c3e50;
        color: #ecf0f1;
        padding: 60px 0 30px;
    }

    .footer h4 {
        color: #ff385c;
        margin-bottom: 20px;
    }

    .footer ul {
        list-style: none;
        padding: 0;
    }

    .footer ul li {
        margin-bottom: 10px;
    }

    .footer a {
        color: #ecf0f1;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .footer a:hover {
        color: #ff385c;
    }

    .social-icons {
        font-size: 1.5em;
        margin-top: 20px;
    }

    .social-icons a {
        margin: 0 10px;
    }

    /* Buttons */
    .btn-primary {
        background: #ff385c;
        border: none;
        padding: 12px 30px;
        border-radius: 5px;
        color: white;
        font-weight: 600;
        transition: background 0.3s ease;
    }

    .btn-primary:hover {
        background: #e6324f;
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    .animate-fade {
        animation: fadeIn 1s ease-in;
    }
</style>
</head>

<body>
    <jsp:include page="mainnavbar.jsp" />


    <!-- Enhanced Hero Banner with Slider -->
    <div class="hero-banner">
        <div class="hero-slider">
            <div class="slide active">
                <img src="https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80" alt="Luxury Villa">
            </div>
        </div>
        <div class="hero-overlay"></div>
        <div class="hero-text">
            <h1 class="hero-heading">Discover Your Perfect Homestay</h1>
            <p class="hero-subtext">Explore unique places to stay around the world</p>
            <button class="btn-primary">Start Your Journey</button>
        </div>
    </div>

    <!-- Search Section -->
    <div class="container">
        <div class="search-container">
            <form class="search-form">
                <input type="text" class="search-input" placeholder="Where are you going?">
                <input type="date" class="search-input" placeholder="Check-in">
                <input type="date" class="search-input" placeholder="Check-out">
                <input type="number" class="search-input" placeholder="Guests">
                <button type="submit" class="btn-primary">Search</button>
            </form>
        </div>
    </div>

    <!-- Popular Destinations -->
    <section class="destinations">
        <div class="container">
            <h2 class="text-center mb-5">Popular Destinations</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="destination-card">
                        <img src="https://images.unsplash.com/photo-1580137189272-c9379f8864fd?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="destination-img" alt="Bali">
                        <div class="destination-info">
                            <h3>Bali, Indonesia</h3>
                            <p>Starting from $50/night</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="destination-card">
                        <img src="https://images.unsplash.com/photo-1506665531195-3566af2b4dfa?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="destination-img" alt="Santorini">
                        <div class="destination-info">
                            <h3>Santorini, Greece</h3>
                            <p>Starting from $80/night</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="destination-card">
                        <img src="https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" class="destination-img" alt="Swiss Alps">
                        <div class="destination-info">
                            <h3>Swiss Alps</h3>
                            <p>Starting from $120/night</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Experience Categories -->
    <section class="experiences">
        <div class="container text-center">
            <h2 class="mb-5">Explore Experiences</h2>
            <div class="row">
                <div class="col-md-3">
                    <i class="fas fa-mountain experience-icon"></i>
                    <h4>Adventure</h4>
                    <p>Thrilling outdoor activities</p>
                </div>
                <div class="col-md-3">
                    <i class="fas fa-utensils experience-icon"></i>
                    <h4>Culinary</h4>
                    <p>Local food experiences</p>
                </div>
                <div class="col-md-3">
                    <i class="fas fa-spa experience-icon"></i>
                    <h4>Wellness</h4>
                    <p>Relaxation & rejuvenation</p>
                </div>
                <div class="col-md-3">
                    <i class="fas fa-landmark experience-icon"></i>
                    <h4>Cultural</h4>
                    <p>Local traditions & heritage</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Reviews Section -->
    <section class="reviews">
        <div class="container text-center">
            <h2 class="mb-5">What Our Guests Say</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="review-card">
                        <img src="https://randomuser.me/api/portraits/women/1.jpg" alt="Reviewer" class="reviewer-img">
                        <h4>Sarah Johnson</h4>
                        <p>"Amazing experience! The villa exceeded our expectations. Will definitely come back!"</p>
                        <div class="rating">
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="review-card">
                        <img src="https://randomuser.me/api/portraits/men/1.jpg" alt="Reviewer" class="reviewer-img">
                        <h4>Michael Chen</h4>
                        <p>"Perfect location and amazing hospitality. Couldn't ask for more!"</p>
                        <div class="rating">
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star-half-alt text-warning"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="review-card">
                        <img src="https://randomuser.me/api/portraits/women/2.jpg" alt="Reviewer" class="reviewer-img">
                        <h4>Emma Wilson</h4>
                        <p>"The cultural experience was unforgettable. Highly recommended!"</p>
                        <div class="rating">
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter">
        <div class="container">
            <h2>Subscribe to Our Newsletter</h2>
            <p>Get the latest updates and special offers directly in your inbox</p>
            <div class="mt-4">
                <input type="email" placeholder="Enter your email">
                <button type="submit">Subscribe</button>
            </div>
        </div>
    </section>

    <!-- Enhanced Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h4>About Traveleo</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press Center</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Support</h4>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Safety Information</a></li>
                        <li><a href="#">Cancellation Options</a></li>
                        <li><a href="#">COVID-19 Response</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Host</h4>
                    <ul>
                        <li><a href="#">Become a Host</a></li>
                        <li><a href="#">Host Resources</a></li>
                        <li><a href="#">Community Forum</a></li>
                        <li><a href="#">Host Protection</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Connect with Us</h4>
                    <div class="social-icons">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
            <hr>
            <div class="text-center mt-4">
                <p>&copy; 2024 Taven&Homestay. All rights reserved.</p>
                <p>
                    <a href="#">Privacy Policy</a> |
                    <a href="#">Terms of Service</a> |
                    <a href="#">Cookie Policy</a>
                </p>
            </div>
        </div>
    </footer>

    <script>
        // Hero Slider Animation
        const slides = document.querySelectorAll('.slide');
        let currentSlide = 0;

        function nextSlide() {
            slides[currentSlide].classList.remove('active');
            currentSlide = (currentSlide + 1) % slides.length;
            slides[currentSlide].classList.add('active');
        }

        setInterval(nextSlide, 5000);
    </script>
</body>
</html>