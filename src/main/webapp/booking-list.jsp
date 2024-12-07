<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.klu.jfsd.model.Booking" %>

<!DOCTYPE html>
<html>
<head>
    <title>Bookings</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
        }

        a {
            color: #007BFF;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Booking List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Home</th>
            <th>Tourist</th>
            <th>Email</th>
            <th>Number of Guests</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <!-- Replace homeId and touristId with their mapped names -->
                <td>${booking.homeName}</td> 
                <td>${booking.touristName}</td>
                <td>${booking.email}</td>
                <td>${booking.numberOfGuests}</td>
                <td>${booking.startDate}</td>
                <td>${booking.endDate}</td>
                <td>
                    <a href="/bookings/delete/${booking.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/bookings/add">Add New Booking</a>
</body>
</html>
