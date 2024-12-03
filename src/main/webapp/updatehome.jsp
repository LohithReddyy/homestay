<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Home</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <h3 align="center">Update Home</h3>
    <div class="container">
        <form method="post" action="updatehomedetails">
            <!-- Home ID (read-only) -->
            <label>Enter Home ID:</label>
            <input type="number" name="homeid" value="${home.id}" readonly required/><br/>

            <!-- Home Name -->
            <label>Enter Name:</label>
            <input type="text" name="hname" value="${home.name}" required/><br/>

            <!-- Home Location -->
            <label>Enter Location:</label>
            <input type="text" name="hlocation" value="${home.location}" required/><br/>

            <!-- AC Selection -->
            <label>AC:</label>
            <input type="radio" name="hac" value="true" ${home.ac ? 'checked' : ''}/>Yes
            <input type="radio" name="hac" value="false" ${!home.ac ? 'checked' : ''}/>No <br/>

            <!-- Max Adults -->
            <label>Max Adults:</label>
            <input type="number" name="hmaxAdults" value="${home.maxAdults}" required/><br/>

            <!-- Home Type -->
            <label>Type:</label>
            <select name="htype" required>
                <option value="Room" ${home.type == 'Room' ? 'selected' : ''}>Room</option>
                <option value="Villa" ${home.type == 'Villa' ? 'selected' : ''}>Villa</option>
                <option value="Homestay" ${home.type == 'Homestay' ? 'selected' : ''}>Homestay</option>
                <option value="Hotel" ${home.type == 'Hotel' ? 'selected' : ''}>Hotel</option>
            </select><br/>

            <!-- Availability -->
            <label>Available:</label>
            <input type="radio" name="havailable" value="true" ${home.available ? 'checked' : ''}/>Yes
            <input type="radio" name="havailable" value="false" ${!home.available ? 'checked' : ''}/>No <br/>

            <!-- Price Per Night -->
            <label>Price Per Night:</label>
            <input type="number" step="0.01" name="hpricepernight" value="${home.pricepernight}" required/><br/>

            <!-- Submit Button -->
            <input type="submit" value="UPDATE" />
        </form>
    </div>
</body>
</html>
