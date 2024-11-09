<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>JFSD</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h3 align="center">Tourist Registration Form</h3>
<div class="container">
    <form method="post" action="inserttourist">
        <label>Enter Name:</label>
        <input type="text" name="tname"/><br/>
        
        <label>Select Gender:</label>
        <input type="radio" name="tgender" value="MALE"/>Male
        <input type="radio" name="tgender" value="FEMALE"/>Female
        <input type="radio" name="tgender" value="OTHERS"/>Others <br/>
        
        <label>Date of Birth:</label>
        <input type="date" name="tdob"/><br/>
        
        <label>Enter Email:</label>
        <input type="email" name="temail"/><br/>
        
        <label>Enter Password:</label>
        <input type="password" name="tpwd"/><br/>
        
        <label>Enter Location:</label>
        <input type="text" name="tlocation"/><br/>
        
        <label>Enter Contact:</label>
        <input type="number" name="tcontact"/><br/>
        
        <input type="submit" value="submit" />
    </form>
</div>
</body>
</html>
