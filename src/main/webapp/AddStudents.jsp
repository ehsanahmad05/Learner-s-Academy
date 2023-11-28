<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddingStudentDetailes</title>
<link rel="stylesheet" href="css/ForAll.css">
</head>
<body>
<%@ include file="Navbar.jsp" %>
<h3>AddingStudentDetails</h3>
	<div id="S">
		<form action="addStudent" method="post">
			Enter Student ID:<br> <input type="text" name="Sid"
				placeholder="Enter StudentId here" required><br> <br> Enter
			Student Name:<br> <input type="text" name="Sname"
				placeholder="Enter StudentName here" required><br> <br> <label
				for="Class">Choose Class:</label> 
				<select name="class" id="class">
					<option value="Select">Select...</option>
					<option value="Class-1">Class-1</option>
					<option value="Class-2">Class-2</option>
					<option value="Class-3">Class-3</option>
			    </select> <br> <br> 
			<input id="submit" type="submit" value="Submit">
		</form>
	</div>
</body>
</html>