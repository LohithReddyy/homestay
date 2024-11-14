<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>Delete Host</title>
</head>
<body>

<h3 align="center">Delete Tourist</h3>
<div class="container">
    <form method="post" action="deletetouristdetails">
        <label>Enter Host ID:</label>
        <input type="number" name="touristid" required/><br/>
        
        <input type="submit" value="DELETE" onclick="return confirm('Are you sure you want to delete this host?')"/>
    </form>
</div>
</body>
</html>