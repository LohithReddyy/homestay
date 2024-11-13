<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Travel and Tourism</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto:wght@700&family=Cormorant+Infant:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        @font-face {
            font-family: 'Algerian';
            src: url('path/to/Algerian.ttf') format('truetype');
        }

        @font-face {
            font-family: 'Colonna MT';
            src: url('path/to/ColonnaMT.ttf') format('truetype');
        }

        
        .navbar {
            margin-bottom: 20px;
            background-color: #D0E8E6;
        }

        .navbar-dark .navbar-nav .nav-link {
            color: #0D5A4C;
            font-family: 'Cormorant Infant', serif;
            font-weight: 600;
        }

        .navbar-dark .navbar-brand {
            color: #0D5A4C;
            font-family: 'Lobster', cursive;
            text-shadow: 0 0 5px lightpurple;
        }

        .navbar-brand img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
            border-radius: 50%;
        }

        .navbar-dark .dropdown-menu {
            background-color: rgba(208, 232, 230, 0.85); /* Translucent light green */
        }
</style>
</head>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">
            <img src="https://png.pngtree.com/template/20200706/ourmid/pngtree-summer-beach-logo-image_389419.jpg" alt="Logo">
            TravelHaven
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="adminhome">Admin Login</a>
                        <a class="dropdown-item" href="hostlogin">Host Login</a>
                        <a class="dropdown-item" href="touristlogin">Tourist Login</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Register</a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="hostregistration">Host Registration</a>
                        <a class="dropdown-item" href="touristregistration">Tourist Registration</a>
                        
                    </div>
                </li>
                
                
                <li class="nav-item"><a class="nav-link" href="#about-us">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact-us">Contact Us</a></li>
            </ul>
        </div>
    </nav>
     <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>