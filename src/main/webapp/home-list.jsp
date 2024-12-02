<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home List</title>
</head>
<body>
<h2>Homes</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Type</th>
        <th>AC</th>
        <th>Max Adults</th>
        <th>Available</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="home" items="${homes}">
        <tr>
            <td>${home.id}</td>
            <td>${home.name}</td>
            <td>${home.location}</td>
            <td>${home.type}</td>
            <td>${home.ac}</td>
            <td>${home.maxAdults}</td>
            <td>${home.available}</td>
            <td>
                <a href="/homes/edit/${home.id}">Edit</a>
                <a href="/homes/delete/${home.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/homes/add">Add Home</a>
</body>
</html>
