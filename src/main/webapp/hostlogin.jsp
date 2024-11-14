<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Host Login | Travel & HomeStay</title>
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
            font-family: var(--font-family);
        }

        body {
            background-color: var(--gray-50);
            color: var(--gray-700);
            line-height: 1.6;
        }

        .page-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .login-container {
            display: flex;
            flex: 1;
            margin-top: 70px;
        }

        .login-image {
            flex: 1;
            background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)),
                        url('https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?auto=format&fit=crop&q=80') center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            padding: 2rem;
            text-align: center;
        }

        .login-image-content {
            max-width: 500px;
        }

        .login-image h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            font-weight: 700;
        }

        .login-image p {
            font-size: 1.1rem;
            opacity: 0.9;
        }

        .login-form-container {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }

        .login-form-wrapper {
            width: 100%;
            max-width: 450px;
            background: white;
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .login-header h1 {
            font-size: 2rem;
            color: var(--gray-700);
            margin-bottom: 0.5rem;
        }

        .login-header p {
            color: var(--gray-300);
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

        .password-toggle {
            position: absolute;
            right: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-300);
            cursor: pointer;
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

        .remember-me input[type="checkbox"] {
            width: 1rem;
            height: 1rem;
            accent-color: var(--primary);
        }

        .forgot-password {
            color: var(--primary);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .forgot-password:hover {
            color: var(--primary-dark);
        }

        .btn {
            width: 100%;
            padding: 1rem;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(255, 56, 92, 0.2);
        }

        .social-login {
            margin-top: 2rem;
            text-align: center;
        }

        .social-login p {
            color: var(--gray-300);
            margin-bottom: 1rem;
            position: relative;
        }

        .social-login p::before,
        .social-login p::after {
            content: '';
            position: absolute;
            top: 50%;
            width: 45%;
            height: 1px;
            background: var(--gray-200);
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

        .social-btn {
            width: 50px;
            height: 50px;
            border: 2px solid var(--gray-200);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--gray-700);
            transition: all 0.3s ease;
        }

        .social-btn:hover {
            border-color: var(--primary);
            color: var(--primary);
            transform: translateY(-2px);
        }

        .register-link {
            text-align: center;
            margin-top: 2rem;
        }

        .register-link a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 500;
        }

        .register-link a:hover {
            color: var(--primary-dark);
        }

        @media (max-width: 1024px) {
            .login-container {
                flex-direction: column;
            }

            .login-image {
                min-height: 300px;
            }
        }

        @media (max-width: 640px) {
            .login-form-wrapper {
                padding: 2rem;
            }

            .login-header h1 {
                font-size: 1.75rem;
            }

            .remember-forgot {
                flex-direction: column;
                gap: 1rem;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>
    <div class="page-container">
        <jsp:include page="mainnavbar.jsp" />

        <div class="login-container">
            <div class="login-image">
                <div class="login-image-content">
                    <h2>Welcome Back, Host!</h2>
                    <p>Access your dashboard, manage your listings, and connect with guests from around the world.</p>
                </div>
            </div>

            <div class="login-form-container">
                <div class="login-form-wrapper">
                    <div class="login-header">
                        <h1>Host Login</h1>
                        <p>Enter your credentials to access your account</p>
                    </div>

                    <form method="post" action="checkhostlogin" id="loginForm">
                        <div class="form-group">
                            <label for="hemail">Email Address</label>
                            <div class="input-group">
                                <i class="fas fa-envelope"></i>
                                <input type="email" id="hemail" name="hemail" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hpwd">Password</label>
                            <div class="input-group">
                                <i class="fas fa-lock"></i>
                                <input type="password" id="hpwd" name="hpwd" class="form-control" required/>
                                <i class="fas fa-eye password-toggle" id="passwordToggle"></i>
                            </div>
                        </div>

                        <div class="remember-forgot">
                            <label class="remember-me">
                                <input type="checkbox" name="remember" id="remember"/>
                                Remember me
                            </label>
                            <a href="#" class="forgot-password">Forgot Password?</a>
                        </div>

                        <button type="submit" class="btn btn-primary">Login</button>

                        <div class="social-login">
                            <p>Or continue with</p>
                            <div class="social-buttons">
                                <a href="#" class="social-btn">
                                    <i class="fab fa-google"></i>
                                </a>
                                <a href="#" class="social-btn">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" class="social-btn">
                                    <i class="fab fa-apple"></i>
                                </a>
                            </div>
                        </div>

                        <div class="register-link">
                            Not a host yet? <a href="hostreg.jsp">Register here</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Password visibility toggle
        const passwordInput = document.getElementById('hpwd');
        const passwordToggle = document.getElementById('passwordToggle');

        passwordToggle.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.classList.toggle('fa-eye');
            this.classList.toggle('fa-eye-slash');
        });

        // Form validation
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            const email = document.getElementById('hemail').value;
            const password = document.getElementById('hpwd').value;

            if (!email || !password) {
                e.preventDefault();
                alert('Please fill in all fields');
                return;
            }

            if (!isValidEmail(email)) {
                e.preventDefault();
                alert('Please enter a valid email address');
                return;
            }
        });

        function isValidEmail(email) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }
    </script>
</body>
</html>