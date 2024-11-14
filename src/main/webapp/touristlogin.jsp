<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourist Login | Travel & HomeStay</title>
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
            --gray-200: #E5E7EB;
            --gray-300: #D1D5DB;
            --gray-700: #374151;
            --font-family: 'Poppins', sans-serif;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--gray-50);
            color: var(--gray-700);
            line-height: 1.6;
        }

        .page-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .main-content {
            display: flex;
            flex: 1;
            padding-top: 70px; /* Account for fixed navbar */
        }

        .login-section {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 3rem 1.5rem;
        }

        .image-section {
            flex: 1;
            background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.4)),
                        url('https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&q=80');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            padding: 2rem;
        }

        .image-content {
            max-width: 500px;
        }

        .image-content h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            font-weight: 700;
        }

        .image-content p {
            font-size: 1.1rem;
            opacity: 0.9;
        }

        .login-card {
            background-color: var(--background);
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            padding: 2.5rem;
        }

        .form-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .form-header h1 {
            font-size: 2rem;
            color: var(--primary);
            margin-bottom: 0.5rem;
        }

        .form-header p {
            color: var(--gray-700);
            font-size: 1.1rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            font-weight: 500;
            margin-bottom: 0.5rem;
            color: var(--gray-700);
        }

        .input-group {
            position: relative;
        }

        .input-group i {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-300);
        }

        .form-control {
            width: 100%;
            padding: 1rem 1rem 1rem 2.5rem;
            border: 2px solid var(--gray-200);
            border-radius: 10px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(255, 56, 92, 0.1);
        }

        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .forgot-password {
            color: var(--primary);
            text-decoration: none;
            font-weight: 500;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }

        .form-button {
            width: 100%;
            padding: 1rem;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .form-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(255, 56, 92, 0.25);
        }

        .social-login {
            margin-top: 2rem;
            text-align: center;
        }

        .social-login p {
            color: var(--gray-700);
            margin-bottom: 1rem;
            position: relative;
        }

        .social-login p::before,
        .social-login p::after {
            content: "";
            position: absolute;
            top: 50%;
            width: 45%;
            height: 1px;
            background-color: var(--gray-200);
        }

        .social-login p::before {
            left: 0;
        }

        .social-login p::after {
            right: 0;
        }

        .social-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
        }

        .social-button {
            flex: 1;
            padding: 0.75rem;
            border: 2px solid var(--gray-200);
            border-radius: 8px;
            background: white;
            color: var(--gray-700);
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .social-button:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        .form-footer {
            margin-top: 2rem;
            text-align: center;
            color: var(--gray-700);
        }

        .form-footer a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

        .features {
            display: flex;
            gap: 2rem;
            margin-top: 3rem;
            padding: 2rem;
            background: var(--gray-50);
            border-radius: 16px;
        }

        .feature {
            flex: 1;
            text-align: center;
        }

        .feature i {
            font-size: 2rem;
            color: var(--secondary);
            margin-bottom: 1rem;
        }

        .feature h3 {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }

        .feature p {
            color: var(--gray-700);
            font-size: 0.9rem;
        }

        footer {
            background: var(--gray-700);
            color: white;
            padding: 3rem 0;
            margin-top: 4rem;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1.5rem;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 2rem;
        }

        .footer-section h3 {
            font-size: 1.2rem;
            margin-bottom: 1.5rem;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.75rem;
        }

        .footer-links a {
            color: var(--gray-300);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: white;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            margin-top: 2rem;
            border-top: 1px solid var(--gray-300);
            color: var(--gray-300);
        }

        @media (max-width: 1024px) {
            .image-section {
                display: none;
            }
        }

        @media (max-width: 768px) {
            .login-card {
                padding: 2rem;
            }

            .features {
                flex-direction: column;
                gap: 1.5rem;
            }

            .footer-content {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .login-card {
                padding: 1.5rem;
            }

            .social-buttons {
                flex-direction: column;
            }

            .footer-content {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="page-container">
        <jsp:include page="mainnavbar.jsp" />
        
        <div class="main-content">
            <div class="login-section">
                <div class="login-card">
                    <div class="form-header">
                        <h1><i class="fas fa-plane-departure"></i> Welcome Back!</h1>
                        <p>Login to discover amazing homestays worldwide</p>
                    </div>
                    
                    <form method="post" action="checktouristlogin">
                        <div class="form-group">
                            <label for="temail">Email Address</label>
                            <div class="input-group">
                                <i class="fas fa-envelope"></i>
                                <input type="email" id="temail" name="temail" class="form-control" placeholder="Enter your email" required/>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="tpwd">Password</label>
                            <div class="input-group">
                                <i class="fas fa-lock"></i>
                                <input type="password" id="tpwd" name="tpwd" class="form-control" placeholder="Enter your password" required/>
                            </div>
                        </div>
                        
                        <div class="remember-forgot">
                            <label class="remember-me">
                                <input type="checkbox" name="remember"> Remember me
                            </label>
                            <a href="#" class="forgot-password">Forgot Password?</a>
                        </div>
                        
                        <button type="submit" class="form-button">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </button>
                    </form>
                    
                    <div class="social-login">
                        <p>Or continue with</p>
                        <div class="social-buttons">
                            <button class="social-button">
                                <i class="fab fa-google"></i> Google
                            </button>
                            <button class="social-button">
                                <i class="fab fa-facebook-f"></i> Facebook
                            </button>
                        </div>
                    </div>
                    
                    <div class="form-footer">
                        <p>Don't have an account? <a href="/touristregistration">Sign up now</a></p>
                    </div>
                </div>
            </div>
            
            <div class="image-section">
                <div class="image-content">
                    <h2>Explore the World</h2>
                    <p>Discover unique homestays and create unforgettable memories with local hosts worldwide.</p>
                </div>
            </div>
        </div>

        <div class="features">
            <div class="feature">
                <i class="fas fa-shield-alt"></i>
                <h3>Secure Booking</h3>
                <p>Your security is our top priority. All transactions are encrypted and protected.</p>
            </div>
            <div class="feature">
                <i class="fas fa-clock"></i>
                <h3>24/7 Support</h3>
                <p>Our support team is always available to help you with any questions.</p>
            </div>
            <div class="feature">
                <i class="fas fa-hand-holding-heart"></i>
                <h3>Best Price Guarantee</h3>
                <p>Find the best deals and exclusive offers on homestays.</p>
            </div>
        </div>

        <footer>
            <div class="footer-content">
                <div class="footer-section">
                    <h3>About Us</h3>
                    <ul class="footer-links">
                        <li><a href="#">Our Story</a></li>
                        <li><a href="#">How it Works</a></li>
                        <li><a href="#">Testimonials</a></li>
                        <li><a href="#">Careers</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Support</h3>
                    <ul class="footer-links">
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Safety Information</a></li>
                        <li><a href="#">Cancellation Options</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Legal</h3>
                    <ul class="footer-links">
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Cookie Policy</a></li>
                        <li><a href="#">Trust & Safety</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Follow Us</h3>
                    <ul class="footer-links">
                        <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i> LinkedIn</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2024 Travel & HomeStay. All rights reserved.</p>
            </div>
        </footer>
    </div>
</body>
</html>