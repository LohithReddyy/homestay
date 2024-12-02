<!DOCTYPE html>
<html>
<head>
    <title>Bookings</title>
</head>
<body>
    <h1>Booking List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Home</th>
            <th>Tourist</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>AC Required</th>
            <th>Max Adults</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.home.name}</td>
                <td>${booking.tourist.name}</td>
                <td>${booking.startDate}</td>
                <td>${booking.endDate}</td>
                <td>${booking.acRequired}</td>
                <td>${booking.maxAdults}</td>
                <td>
                    <a href="/bookings/delete/${booking.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/bookings/add">Add New Booking</a>
</body>
</html>
