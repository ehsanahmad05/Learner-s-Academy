<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/AddingTeachers.css">
</head>
<body>
<%@ include file="Navbar.jsp" %>
<h3>AddingTeacherDetails</h3>
	<div id="Tadd">
		<form action="AddingTeacher" method="post">
			<label>Enter Teacher Id :</label><br> 
			<input type="text" placeholder="Enter Id here" name="Tid" required><br>
			<br> <label>Enter Teacher Name :</label><br> 
			<input type="text" placeholder="Enter name here" name="Tname" required><br>
			<br> <label>Enter Teacher Subjects :</label><br> 
			<input type="checkbox" name="subjects" value="Hindi">Hindi<br> 
			<input type="checkbox" name="subjects" value="English">English<br> 
			<input type="checkbox" name="subjects" value="Mathematics">Mathematics<br> 
			<input type="checkbox" name="subjects" value="Science">Science<br> 
			<input type="checkbox" name="subjects" value="History">History<br><br><br> <br>
			<input id="submit" type="submit" value="Submit">
			</form>
	     </div>
		
</body>
</html>