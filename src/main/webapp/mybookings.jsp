<!DOCTYPE html>
<html>
<head>
    <title>My Bookings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        
        h1 {
            text-align: center;
            color: #333;
        }
        
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

        .no-bookings {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #777;
        }
    </style>
</head>
<body>
    <h1>My Bookings</h1>
    
    <c:choose>
        <c:when test="${not empty bookings}">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Home</th>
                    <th>Email</th>
                    <th>Number of Guests</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.id}</td>
                        <td>${booking.homeName}</td> <!-- Replace with mapped home name -->
                        <td>${booking.email}</td>
                        <td>${booking.numberOfGuests}</td>
                        <td>${booking.startDate}</td>
                        <td>${booking.endDate}</td>
                        <td>
                            <a href="/bookings/details/${booking.id}">View</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            <div class="no-bookings">You have no bookings yet.</div>
        </c:otherwise>
    </c:choose>
</body>
</html>
