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
<h3 align="center">Add Host</h3>
<div class="container">
    <form method="post" action="addhostdetails">
        <label>Enter Name:</label>
        <input type="text" name="hname"/><br/>
        
        <label>Select Gender:</label>
        <input type="radio" name="hgender" value="MALE"/>Male
        <input type="radio" name="hgender" value="FEMALE"/>Female
        <input type="radio" name="hgender" value="OTHERS"/>Others <br/>
        
        <label>Date of Birth:</label>
        <input type="date" name="hdob"/><br/>
        
        <label>Enter Email:</label>
        <input type="email" name="hemail"/><br/>
        
        <label>Enter Password:</label>
        <input type="password" name="hpwd"/><br/>
        
        <label>Enter Location:</label>
        <input type="text" name="hlocation"/><br/>
        
        <label>Enter Contact:</label>
        <input type="number" name="hcontact"/><br/>
        
        <label>Enter Pan Card Number:</label>
        <input type="number" name="hpan"/><br/>
        
        <label>Enter Bank Account Number:</label>
        <input type="number" name="hbank"/><br/>
        
        <label>Enter Bank IFSC Number:</label>
        <input type="number" name="hifsc"/><br/>
        
        <input type="submit" value="ADD" />
    </form>
</div>
</body>
</html>
