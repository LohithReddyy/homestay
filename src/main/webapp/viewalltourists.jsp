<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<%@ include file="mainnavbar.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tourist Details</title>
</head>
<body>
    <h3 align="center">Tourist Details</h3>
    <table align="center" border="2">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>PASSWORD</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT</th>
        </tr>
        <c:forEach items="${touristslist}" var="tourist">
            <tr>
                <td><c:out value="${tourist.tid}" /></td>
                <td><c:out value="${tourist.tname}" /></td>
                <td><c:out value="${tourist.tgender}" /></td>
                <td><c:out value="${tourist.tdateofbirth}" /></td>
                <td><c:out value="${tourist.tpassword}" /></td>
                <td><c:out value="${tourist.temail}" /></td>
                <td><c:out value="${tourist.tlocation}" /></td>
                <td><c:out value="${tourist.tcontact}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
