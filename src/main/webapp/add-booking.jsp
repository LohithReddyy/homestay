<!DOCTYPE html>
<html>
<head>
    <title>Add Booking</title>
</head>
<body>
    <h1>Add a New Booking</h1>
    <form action="/bookings/add" method="post">
        <label for="home">Home:</label>
        <select name="home.id">
            <c:forEach var="home" items="${homes}">
                <option value="${home.id}">${home.name}</option>
            </c:forEach>
        </select><br><br>

        <label for="tourist">Tourist:</label>
        <select name="tourist.id">
            <c:forEach var="tourist" items="${tourists}">
                <option value="${tourist.id}">${tourist.name}</option>
            </c:forEach>
        </select><br><br>

        <label for="startDate">Start Date:</label>
        <input type="date" name="startDate"><br><br>

        <label for="endDate">End Date:</label>
        <input type="date" name="endDate"><br><br>

        <label for="acRequired">AC Required:</label>
        <input type="checkbox" name="acRequired"><br><br>

        <label for="maxAdults">Max Adults:</label>
        <input type="number" name="maxAdults"><br><br>

        <input type="submit" value="Create Booking">
    </form>
</body>
</html>
