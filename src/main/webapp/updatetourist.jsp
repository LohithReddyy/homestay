<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>Update Tourist</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>

<h3 align="center">Update Tourist Information</h3>
<div class="container">
    <form method="post" action="updatetouristdetails">
        <!-- Hidden field for tourist ID -->
        <input type="hidden" name="tid" value="${tourist.tid}" />

        <label>Enter Name:</label>
        <input type="text" name="tname" value="${tourist.tname}" required maxlength="100"/><br/>

        <label>Select Gender:</label>
        <input type="radio" name="tgender" value="MALE" <c:if test="${tourist.tgender == 'MALE'}">checked</c:if>/>Male
        <input type="radio" name="tgender" value="FEMALE" <c:if test="${tourist.tgender == 'FEMALE'}">checked</c:if>/>Female
        <input type="radio" name="tgender" value="OTHERS" <c:if test="${tourist.tgender == 'OTHERS'}">checked</c:if>/>Others <br/>

        <label>Date of Birth:</label>
        <input type="date" name="tdateofbirth" value="${tourist.tdateofbirth}" maxlength="20"/><br/>

        <label>Enter Email:</label>
        <input type="email" name="temail" value="${tourist.temail}" required maxlength="100"/><br/>

        <label>Enter Password:</label>
        <input type="password" name="tpassword" value="${tourist.tpassword}" required maxlength="100"/><br/>

        <label>Enter Location:</label>
        <input type="text" name="tlocation" value="${tourist.tlocation}" required maxlength="100"/><br/>

        <label>Enter Contact:</label>
        <input type="number" name="tcontact" value="${tourist.tcontact}" required maxlength="20"/><br/>

        <input type="submit" value="Update Tourist" />
    </form>
</div>

</body>
</html>
