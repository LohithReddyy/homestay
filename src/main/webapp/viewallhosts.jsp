<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<%@ include file="mainnavbar.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Host Details</title>
</head>
<body>
    <h3 align="center">Host Details</h3>
    <table align="center" border="2">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT</th>
            <th>PAN NUM</th>
            <th>BANK ACCOUNT</th>
            <th>BNK IFSC</th>
        </tr>
        <c:forEach items="${hostslist}" var="host">
            <tr>
                <td><c:out value="${host.hid}" /></td>
                <td><c:out value="${host.hname}" /></td>
                <td><c:out value="${host.hgender}" /></td>
                <td><c:out value="${host.hdateofbirth}" /></td>
                <td><c:out value="${host.hpassword}" /></td>
                <td><c:out value="${host.hemail}" /></td>
                <td><c:out value="${host.hlocation}" /></td>
                <td><c:out value="${host.hcontact}" /></td>
                <td><c:out value="${host.hpan}" /></td>
                <td><c:out value="${host.hbank}" /></td>
                <td><c:out value="${host.hifsc}" /></td>
            </tr>
        </c:forEach>
    </table>
    <a href="addhost">Add Host</a>
</body>
</html>
