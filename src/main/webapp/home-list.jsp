<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        img {
            max-width: 100px;
            max-height: 100px;
            object-fit: cover;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: blue;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Homes List</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Type</th>
        <th>AC</th>
        <th>Max Adults</th>
        <th>Available</th>
        <th>Price per Night</th>
        <th>Image</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="home" items="${homeslist}">
        <tr>
            <td>${home.id}</td>
            <td>${home.name}</td>
            <td>${home.location}</td>
            <td>${home.type}</td>
            <td>${home.ac ? 'Yes' : 'No'}</td>
            <td>${home.maxAdults}</td>
            <td>${home.available ? 'Yes' : 'No'}</td>
            <td>${home.pricepernight}</td>
            <td>
                <img src="homeimage/${home.id}" alt="Home Image" />
            </td>
            <td>
                <a href="updatehome/${home.id}">Edit</a> |
                <a href="deletehomedetails/${home.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div style="text-align: center;">
    <a href="addhome" style="padding: 10px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Add Home</a>
</div>
</body>
</html>
