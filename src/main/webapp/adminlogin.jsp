<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Portal | Travel & HomeStay</title>
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
            background: linear-gradient(135deg, var(--gray-50) 0%, var(--gray-100) 100%);
            min-height: 100vh;
        }

        .admin-login-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            align-items: center;
        }

        .login-form-section {
            background: var(--background);
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .admin-header {
            text-align: center;
            margin-bottom: 2.5rem;
        }

        .admin-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
        }

        .admin-icon i {
            font-size: 32px;
            color: white;
        }

        .admin-header h1 {
            color: var(--gray-700);
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .admin-header p {
            color: var(--gray-700);
            opacity: 0.8;
            font-size: 1.1rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            color: var(--gray-700);
            font-weight: 500;
            margin-bottom: 0.5rem;
        }

        .input-group {
            position: relative;
        }

        .input-group i {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-700);
            opacity: 0.5;
        }

        .form-control {
            width: 100%;
            padding: 1rem 1rem 1rem 2.5rem;
            border: 2px solid var(--gray-100);
            border-radius: 10px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background: var(--gray-50);
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
            margin-bottom: 2rem;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--gray-700);
        }

        .remember-me input[type="checkbox"] {
            width: 1.2rem;
            height: 1.2rem;
            border-radius: 4px;
            border: 2px solid var(--gray-100);
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

        .admin-btn {
            width: 100%;
            padding: 1rem;
            border: none;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: white;
            margin-bottom: 1rem;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(255, 56, 92, 0.3);
        }

        .btn-secondary {
            background: var(--gray-100);
            color: var(--gray-700);
        }

        .btn-secondary:hover {
            background: var(--gray-200);
        }

        .info-section {
            padding: 2rem;
            color: var(--gray-700);
        }

        .info-section h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .info-section p {
            font-size: 1.1rem;
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .feature-list {
            list-style: none;
        }

        .feature-item {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1.5rem;
            padding: 1rem;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .feature-icon {
            width: 40px;
            height: 40px;
            background: var(--primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .feature-text {
            flex: 1;
        }

        .feature-text h3 {
            font-size: 1.1rem;
            margin-bottom: 0.25rem;
        }

        .feature-text p {
            font-size: 0.9rem;
            margin: 0;
            opacity: 0.8;
        }

        @media (max-width: 1024px) {
            .admin-login-container {
                grid-template-columns: 1fr;
                max-width: 600px;
            }

            .info-section {
                order: -1;
                text-align: center;
            }

            .feature-list {
                max-width: 400px;
                margin: 0 auto;
            }
        }

        @media (max-width: 640px) {
            .login-form-section {
                padding: 2rem;
            }

            .admin-header h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="mainnavbar.jsp" />

    <div class="admin-login-container">
        <div class="login-form-section">
            <div class="admin-header">
                <div class="admin-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <h1>Admin Portal</h1>
                <p>Access the administrative dashboard</p>
            </div>

            <form method="post" action="checkadminlogin">
                <div class="form-group">
                    <label for="username">Username</label>
                    <div class="input-group">
                        <i class="fas fa-user"></i>
                        <input 
                            type="text" 
                            id="username" 
                            name="auname" 
                            class="form-control"
                            placeholder="Enter your username"
                            required
                        />
                    </div>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-group">
                        <i class="fas fa-lock"></i>
                        <input 
                            type="password" 
                            id="password" 
                            name="apwd" 
                            class="form-control"
                            placeholder="Enter your password"
                            required
                        />
                    </div>
                </div>

                <div class="remember-forgot">
                    <label class="remember-me">
                        <input type="checkbox" name="remember">
                        <span>Remember me</span>
                    </label>
                    <a href="#" class="forgot-password">Forgot password?</a>
                </div>

                <button type="submit" class="admin-btn btn-primary">
                    <i class="fas fa-sign-in-alt"></i> Sign In
                </button>
                <button type="reset" class="admin-btn btn-secondary">
                    <i class="fas fa-redo"></i> Reset
                </button>
            </form>
        </div>

        <div class="info-section">
            <h2>Welcome Back</h2>
            <p>Access your administrative dashboard to manage properties, users, and bookings all in one place.</p>
            
            <ul class="feature-list">
                <li class="feature-item">
                    <div class="feature-icon">
                        <i class="fas fa-home"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Property Management</h3>
                        <p>Add, edit, and manage all homestay listings</p>
                    </div>
                </li>
                <li class="feature-item">
                    <div class="feature-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="feature-text">
                        <h3>User Management</h3>
                        <p>Monitor and manage user accounts and permissions</p>
                    </div>
                </li>
                <li class="feature-item">
                    <div class="feature-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Analytics Dashboard</h3>
                        <p>Track bookings, revenue, and performance metrics</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>