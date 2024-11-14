<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>Update Host</title>
</head>
<body>
   
    <h3 align="center">Update Host</h3>
    <div class="container">
        <form method="post" action="updatehostdetails">
           <label>Enter Host ID:</label>
        <input type="number" name="hostid" required/><br/>
            
            <label>Enter Name:</label>
            <input type="text" name="hname" value="${host.hname}"/><br/>
            
            <label>Select Gender:</label>
            <input type="radio" name="hgender" value="MALE" 
                   ${host.hgender == 'MALE' ? 'checked' : ''}/>Male
            <input type="radio" name="hgender" value="FEMALE" 
                   ${host.hgender == 'FEMALE' ? 'checked' : ''}/>Female
            <input type="radio" name="hgender" value="OTHERS" 
                   ${host.hgender == 'OTHERS' ? 'checked' : ''}/>Others <br/>
            
            <label>Date of Birth:</label>
            <input type="date" name="hdob" value="${host.hdateofbirth}"/><br/>
            
            <label>Enter Email:</label>
            <input type="email" name="hemail" value="${host.hemail}"/><br/>
            
            <label>Enter Password:</label>
            <input type="password" name="hpwd" value="${host.hpassword}"/><br/>
            
            <label>Enter Location:</label>
            <input type="text" name="hlocation" value="${host.hlocation}"/><br/>
            
            <label>Enter Contact:</label>
            <input type="text" name="hcontact" value="${host.hcontact}"/><br/>
            
            <label>Enter PAN Card Number:</label>
            <input type="text" name="hpan" value="${host.hpan}"/><br/>
            
            <label>Enter Bank Account Number:</label>
            <input type="text" name="hbank" value="${host.hbank}"/><br/>
            
            <label>Enter Bank IFSC Number:</label>
            <input type="text" name="hifsc" value="${host.hifsc}"/><br/>
            
            <input type="submit" value="UPDATE" />
        </form>
    </div>
</body>
</html>
