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
        body {
            background-image: url('https://bjtonline.com/sites/bjtonline.com/files/styles/bjt30_article_medium/public/maldives-666122_1920.jpg?itok=SdTom3iR&timestamp=1603898545');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }
        .jumbotron {
            background: rgba(173, 216, 230, 0.6);
            color: white;
            padding: 2rem 1rem;
        }
        .jumbotron h2 {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            text-shadow: 0 0 10px #0D5A4C;
        }
        .search-box-container, .search-boxes-container {
            display: flex;
            justify-content: center;
            gap: 10px;
            width: 100%;
            max-width: 570px;
            margin: 0 auto;
        }
        .search-box, .search-box-small {
            width: 100%;
            max-width: 570px;
            border-radius: 40px;
            padding: 8px 12px;
            background-color: rgba(0, 123, 255, 0.2);
            border: 1px solid rgba(0, 123, 255, 0.5);
            color: white;
        }
        .btn-green {
            background-color: #0D5A4C;
            color: white;
            font-family: 'Cormorant Infant', serif;
            font-weight: 600;
            margin-top: 20px;
        }
        .btn-green:hover {
            background-color: #0A4A3D;
        }
        #about-us, #contact-us {
            padding: 3rem 1rem;
            margin-top: 40px;
            border-radius: 10px;
            width: 100%;
            margin-left: auto;
            margin-right: auto;
        }
        #about-us {
            background: rgba(0, 0, 0, 0.6);
            color: white;
        }
        #contact-us {
            background: rgba(255, 255, 255, 0.8);
            color: purple;
            text-align: center;
        }
        .card {
            width: 95%;
            height: 510px;
        }
        .card-title, .card-text {
            color: green;
        }
    </style>
</head>

<body>
<%@ include file="mainnavbar.jsp" %>

<!-- Search Box -->
    <div class="jumbotron text-center">
        <h2 class="display-4">Search for Your Next Adventure</h2>
        <div class="search-box-container">
            <input type="text" class="form-control search-box" placeholder="Enter a destination" aria-label="Destination">
        </div>
        <div class="search-boxes-container">
            <input type="date" class="form-control search-box-small" placeholder="Start Date" aria-label="Start Date">
            <input type="date" class="form-control search-box-small" placeholder="End Date" aria-label="End Date">
            <input type="number" class="form-control search-box-small" placeholder="Guests" aria-label="Guests">
        </div>
        <button class="btn btn-green btn-lg mt-3">Search</button>
    </div>

<!-- Image Cards Section -->
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="https://www.travelandleisure.com/thmb/wsA6EXFuYkqtuJGLbQWw05-cwPs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/lake-como-MOSTBEAUTIFUL0921-cb08f3beff1041e4beefc67b5e956b23.jpg" alt="Beach Destination">
                    <div class="card-body">
                        <h5 class="card-title">Lake Sunset Picnic</h5>
                        <p class="card-text">Experience a magical evening by tranquil waters of the lake.</p>
                        <a href="#" class="btn btn-green">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="https://c4.wallpaperflare.com/wallpaper/157/540/892/5bd3443438596-wallpaper-preview.jpg" alt="Mountain Destination">
                    <div class="card-body">
                        <h5 class="card-title">Maldives Beach Resort</h5>
                        <p class="card-text">Relax on the pristine beaches of Maldives and enjoy a luxurious stay.</p>
                        <a href="#" class="btn btn-green">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="https://www.tourmyindia.com/blog//wp-content/uploads/2020/11/Meghalaya-Shillong.jpg" alt="City Destination">
                    <div class="card-body">
                        <h5 class="card-title">Meghalaya</h5>
                        <p class="card-text">Explore the picturesque state of North East India with its waterfalls and lakes.</p>
                        <a href="#" class="btn btn-green">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- About Us Section -->
    <section id="about-us">
        <h2 align="center">About Us</h2>
        <p>We strive to make your travel experiences more enjoyable and memorable. Discover new places with us!</p>
    </section>


</body>
</html>