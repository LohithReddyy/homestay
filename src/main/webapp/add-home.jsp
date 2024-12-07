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
       <form action="addhomedetails" method="post" enctype="multipart/form-data">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="location">Location:</label>
    <input type="text" id="location" name="location" required><br>

    <div class="form-group">
                <label for="acRequired">AC Required:</label>
                <select id="acRequired" name="ac" required>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>


    <div class="form-group">
                <label for="maxAdults">Max Adults:</label>
                <input type="number" id="maxAdults" name="maxAdults" required>
            </div>


   <div class="form-group">
                <label for="htype">Home Type:</label>
                <select id="htype" name="type" required>
                    <option value="Room">Room</option>
                    <option value="Villa">Villa</option>
                    <option value="Homestay">Homestay</option>
                    <option value="Hotel">Hotel</option>
                </select>
            </div>


    <label for="available">Available (true/false):</label>
    <input type="text" id="available" name="available" required><br>
    
    <div class="form-group">
                <label for="pricePerNight">Price per Night:</label>
                <input type="number" id="pricePerNight" name="pricepernight" required>
    </div>
    <div class="form-group">
                <label for="image">Upload Image</label>
                <input type="file" class="form-control-file" id="image" name="image" required>
    </div>

    <button type="submit">Add Home</button>
</form>

    </div>
</body>
</html>
