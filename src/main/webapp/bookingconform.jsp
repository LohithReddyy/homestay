<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link rel="stylesheet" href="styles.css"> <!-- Assuming you have a styles.css file -->
</head>
<body>

    <div class="container">
        <h1>Booking Details</h1>

        <div class="details-group">
            <div class="form-group">
                <label for="homeId">Home ID:</label>
                <span id="homeId">${homeId}</span>
            </div>

            <div class="form-group">
                <label for="touristId">Tourist ID:</label>
                <span id="touristId">${touristId}</span>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <span id="email">${email}</span>
            </div>

            <div class="form-group">
                <label for="numberOfGuests">Number of Guests:</label>
                <span id="numberOfGuests">${numberOfGuests}</span>
            </div>

            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <span id="startDate">${startDate}</span>
            </div>

            <div class="form-group">
                <label for="endDate">End Date:</label>
                <span id="endDate">${endDate}</span>
            </div>
        </div>

        <!-- Display success message -->
        <div class="message">
            <p>${message}</p>
        </div>
    </div>

</body>
</html>
