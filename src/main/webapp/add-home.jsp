<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Home</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Add New Home</h2>
        <form action="/homes/add" method="POST">
            <div class="form-group">
                <label for="hname">Home Name:</label>
                <input type="text" id="hname" name="hname" required>
            </div>
            <div class="form-group">
                <label for="htype">Home Type:</label>
                <select id="htype" name="htype" required>
                    <option value="Room">Room</option>
                    <option value="Villa">Villa</option>
                    <option value="Homestay">Homestay</option>
                    <option value="Hotel">Hotel</option>
                </select>
            </div>
            <div class="form-group">
                <label for="acRequired">AC Required:</label>
                <select id="acRequired" name="acRequired" required>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>
            <div class="form-group">
                <label for="maxAdults">Max Adults:</label>
                <input type="number" id="maxAdults" name="maxAdults" required>
            </div>
            <div class="form-group">
                <label for="availableFrom">Available From:</label>
                <input type="date" id="availableFrom" name="availableFrom" required>
            </div>
            <div class="form-group">
                <label for="availableUntil">Available Until:</label>
                <input type="date" id="availableUntil" name="availableUntil" required>
            </div>
            <div class="form-group">
                <label for="pricePerNight">Price per Night:</label>
                <input type="number" id="pricePerNight" name="pricePerNight" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" required>
            </div>
            <div class="form-group">
                <button type="submit">Add Home</button>
            </div>
        </form>
    </div>
</body>
</html>
