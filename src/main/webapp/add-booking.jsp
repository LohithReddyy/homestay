<!DOCTYPE html>
<html>
<head>
    <title>Add Booking</title>
</head>
<body>
    <h1>Add a New Booking</h1>
    <form action="/bookings/add" method="post">
        <!-- Home Selection -->
        <label for="homeId">Home:</label>
        <select name="homeId" id="homeId">
            <c:forEach var="home" items="${homeslist}">
                <option value="${home.id}">${home.name}</option>
            </c:forEach>
        </select><br><br>

        <!-- Tourist Selection -->
        <label for="touristId">Tourist:</label>
        <select name="touristId" id="touristId">
            <c:forEach var="tourist" items="${touristslist}">
                <option value="${tourist.id}">${tourist.name}</option>
            </c:forEach>
        </select><br><br>

        <!-- Email Input -->
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required><br><br>

        <!-- Number of Guests -->
        <label for="numberOfGuests">Number of Guests:</label>
        <input type="number" name="numberOfGuests" id="numberOfGuests" required><br><br>

        <!-- Start Date -->
        <label for="startDate">Start Date:</label>
        <input type="date" name="startDate" id="startDate" required><br><br>

        <!-- End Date -->
        <label for="endDate">End Date:</label>
        <input type="date" name="endDate" id="endDate" required><br><br>

        <!-- Submit Button -->
        <input type="submit" value="Create Booking">
    </form>
</body>
</html>
