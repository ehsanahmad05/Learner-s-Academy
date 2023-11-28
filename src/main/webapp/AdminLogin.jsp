<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<title>AdminLogin</title>
</head>
<body>
<div id="N">
    <form action="login" method="post">
    <label>Enter Your Email :</label><br> 
    <input type="email" placeholder="Enter Email here" name="email" required><br><br>
    <label>Enter Your Password :</label><br> 
    <input type="password" placeholder="Enter Password here" name="password" required><br><br>
    <input type="submit" value="Submit" id="submit">&nbsp &nbsp &nbsp
    <input type="reset" value="Reset" id="reset">   
</form></div>
</body>
</html>