<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel & HomeStay</title>
    
    <!-- Fonts and Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary: #FF385C;
            --primary-dark: #E31C5F;
            --secondary: #222222;
            --background: #FFFFFF;
            --gray-50: #F9FAFB;
            --gray-100: #F3F4F6;
            --gray-200: #E5E7EB;
            --gray-700: #374151;
            --shadow-sm: 0 1px 2px 0 rgb(0 0 0 / 0.05);
            --shadow-md: 0 4px 6px -1px rgb(0 0 0 / 0.1);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: var(--secondary);
            background-color: var(--gray-50);
        }

        .navbar {
            background-color: var(--background);
            border-bottom: 1px solid var(--gray-200);
            padding: 1.5rem 2rem; /* Increased padding */
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: var(--shadow-sm);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            width: 100%;
        }

        .nav-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .nav-brand {
            display: flex;
            align-items: center;
            gap: 1.5rem;
            text-decoration: none;
            color: var(--primary);
            font-weight: 800;
            font-size: 2.5rem;
            transition: var(--transition);
        }

        .nav-brand:hover {
            color: var(--primary-dark);
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 2.5rem; /* Increased gap */
            flex-grow: 1; /* Ensure it takes remaining space */
        }

        .nav-item {
            text-decoration: none;
            color: var(--gray-700);
            font-weight: ;
            font-size: 1.25rem;
            padding: 0.75rem 1.5rem;
            border-radius: 9999px;
            transition: var(--transition);
        }

        .nav-item:hover {
            background-color: var(--gray-100);
            color: var(--primary);
        }

        .search-container {
            position: relative;
            width: 400px; /* Increased width */
            margin-left: 3rem; /* Adjusted spacing */
        }

        .search-box {
            width: 100%;
            padding: 1.25rem 1.5rem 1.25rem 3.5rem;
            border: 1px solid var(--gray-200);
            border-radius: 9999px;
            background-color: var(--gray-50);
            font-size: 1.25rem;
            transition: var(--transition);
        }

        .search-box:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: var(--shadow-md);
        }

        .search-icon {
            position: absolute;
            left: 1.75rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-700);
            font-size: 1.25rem;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 2.5rem; /* Increased gap */
            margin-left: 3rem; /* Adjusted spacing */
        }

        .dropdown {
            position: relative;
        }

        .dropdown-toggle {
            display: flex;
            align-items: center;
            gap: 1rem;
            padding: 1rem 1.5rem;
            border-radius: 9999px;
            background: none;
            border: none;
            cursor: pointer;
            color: var(--gray-700);
            font-weight: 700;
            font-size: 1.25rem;
            transition: var(--transition);
        }

        .dropdown-toggle:hover {
            background-color: var(--gray-100);
            color: var(--primary);
        }

        .dropdown-menu {
            position: absolute;
            right: 0;
            top: 100%;
            margin-top: 1rem;
            background-color: var(--background);
            border-radius: 1.25rem;
            border: 1px solid var(--gray-200);
            box-shadow: var(--shadow-md);
            min-width: 250px;
            opacity: 0;
            visibility: hidden;
            transform: translateY(-10px);
            transition: var(--transition);
        }

        .dropdown:hover .dropdown-menu {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-item {
            display: flex;
            align-items: center;
            gap: 1.5rem;
            padding: 1.25rem 2rem;
            color: var(--gray-700);
            text-decoration: none;
            font-size: 1.25rem;
            transition: var(--transition);
        }

        .dropdown-item:hover {
            background-color: var(--gray-50);
            color: var(--primary);
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            cursor: pointer;
            padding: 1rem;
        }

        @media (max-width: 1024px) {
            .nav-links {
                display: none;
            }

            .search-container {
                width: 350px;
            }
        }

        @media (max-width: 768px) {
            .mobile-toggle {
                display: block;
            }

            .nav-links, .search-container, .nav-actions {
                display: none;
            }

            .nav-content.active .nav-links,
            .nav-content.active .search-container,
            .nav-content.active .nav-actions {
                display: flex;
                flex-direction: column;
                width: 100%;
                gap: 2rem;
                padding: 2rem 0;
            }

            .nav-content.active {
                flex-direction: column;
                height: auto;
            }

            .dropdown-menu {
                position: static;
                box-shadow: none;
                border: none;
                opacity: 1;
                visibility: visible;
                transform: none;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <div class="nav-content" id="navContent">
                <a href="/" class="nav-brand">
                    <i class="fas fa-home"></i>
                    Travel & HomeStay
                </a>

                <button class="mobile-toggle" onclick="toggleNav()">
                    <i class="fas fa-bars"></i>
                </button>

                <div class="nav-links">
                    <a href="/" class="nav-item">Home</a>
                    <a href="findhomestay" class="nav-item">Find a HomeStay</a>
                    <a href="listroom" class="nav-item">List a Room</a>
                </div>

                <div class="search-container">
                    <i class="fas fa-search search-icon"></i>
                    <input type="text" class="search-box" placeholder="Where would you like to go?">
                </div>

                <div class="nav-actions">
                    <div class="dropdown">
                        <button class="dropdown-toggle">
                            <i class="fas fa-user"></i>
                            Sign up
                        </button>
                        <div class="dropdown-menu">
                            <a href="hostregistration" class="dropdown-item">
                                <i class="fas fa-home"></i>
                                Host
                            </a>
                            <a href="touristregistration" class="dropdown-item">
                                <i class="fas fa-plane"></i>
                                Tourist
                            </a>
                        </div>
                    </div>

                    <div class="dropdown">
                        <button class="dropdown-toggle">
                            <i class="fas fa-sign-in-alt"></i>
                            Admin Login
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <script>
        function toggleNav() {
            document.getElementById('navContent').classList.toggle('active');
        }
    </script>
</body>
</html>
