<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

        a {
            text-decoration: none;
            color: blue;
        }

        a:hover {
            text-decoration: underline;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .add-home-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .add-home-link:hover {
            background-color: #45a049;
        }

        img {
            max-width: 100px;
            max-height: 100px;
            object-fit: cover;
            border: 1px solid #ddd;
            border-radius: 5px;
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
                <c:if test="${home.image != null}">
                    <img src="data:image/jpeg;base64,${fn:escapeXml(home.image)}" alt="Home Image" />
                </c:if>
                <c:if test="${home.image == null}">
                    No Image
                </c:if>
            </td>
            <td>
                <a href="updatehome/${home.id}">Edit</a> |
                <a href="deletehomedetails/${home.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div style="text-align: center;">
    <a href="addhome" class="add-home-link">Add Home</a>
</div>
</body>
</html>
