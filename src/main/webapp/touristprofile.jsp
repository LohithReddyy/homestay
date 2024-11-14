<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.klu.jfsd.model.Tourist" %>
<%
    Tourist tourist = (Tourist) session.getAttribute("tourist"); // Assumes the Tourist object is set in the session
    if (tourist == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if tourist object is not available
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tourist Profile</title>
    <style>
        .profile-container {
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
        .profile-container h2 {
            text-align: center;
        }
        .profile-container table {
            width: 100%;
            margin: 20px 0;
        }
        .profile-container th, .profile-container td {
            padding: 10px;
            text-align: left;
        }
        .profile-container .edit-button {
            display: block;
            margin: 0 auto;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<div class="profile-container">
    <h2>Tourist Profile</h2>
    <table>
        <tr>
            <th>Tourist ID</th>
            <td><%= tourist.getTid() %></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><%= tourist.getTname() %></td>
        </tr>
        <tr>
            <th>Gender</th>
            <td><%= tourist.getTgender() %></td>
        </tr>
        <tr>
            <th>Date of Birth</th>
            <td><%= tourist.getTdateofbirth() %></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><%= tourist.getTemail() %></td>
        </tr>
        <tr>
            <th>Location</th>
            <td><%= tourist.getTlocation() %></td>
        </tr>
        <tr>
            <th>Contact</th>
            <td><%= tourist.getTcontact() %></td>
        </tr>
    </table>
    
    <!-- Edit form, hidden initially -->
    <form id="editForm" action="updateTourist" method="post" style="display: none;">
        <input type="hidden" name="tid" value="<%= tourist.getTid() %>">
        <label>Name: <input type="text" name="tname" value="<%= tourist.getTname() %>"></label><br>
        <label>Gender: <input type="text" name="tgender" value="<%= tourist.getTgender() %>"></label><br>
        <label>Date of Birth: <input type="text" name="tdateofbirth" value="<%= tourist.getTdateofbirth() %>"></label><br>
        <label>Email: <input type="text" name="temail" value="<%= tourist.getTemail() %>"></label><br>
        <label>Location: <input type="text" name="tlocation" value="<%= tourist.getTlocation() %>"></label><br>
        <label>Contact: <input type="text" name="tcontact" value="<%= tourist.getTcontact() %>"></label><br>
        <button type="submit">Save Changes</button>
    </form>

    <a href="#" class="edit-button" onclick="toggleEdit()">Edit Profile</a>
</div>

<script>
    function toggleEdit() {
        var form = document.getElementById('editForm');
        if (form.style.display === 'none') {
            form.style.display = 'block';
        } else {
            form.style.display = 'none';
        }
    }
</script>
</body>
</html>
