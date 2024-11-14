<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>Add Tourist</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>

<h3 align="center">Add Tourist Information</h3>
<div class="container">
    <form method="post" action="addtouristdetails">
        
        <label>Enter Name:</label>
        <input type="text" name="tname" required maxlength="100"/><br/>

        <label>Select Gender:</label>
        <input type="radio" name="tgender" value="MALE"/>Male
        <input type="radio" name="tgender" value="FEMALE"/>Female
        <input type="radio" name="tgender" value="OTHERS"/>Others <br/>

        <label>Date of Birth:</label>
        <input type="date" name="tdateofbirth" maxlength="20"/><br/>

        <label>Enter Email:</label>
        <input type="email" name="temail" required maxlength="100"/><br/>

        <label>Enter Password:</label>
        <input type="password" name="tpassword" required maxlength="100"/><br/>

        <label>Enter Location:</label>
        <input type="text" name="tlocation" required maxlength="100"/><br/>

        <label>Enter Contact:</label>
        <input type="number" name="tcontact" required maxlength="20"/><br/>

        <input type="submit" value="Add Tourist" />
    </form>
</div>

</body>
</html>
