<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ClassesList.css">
<title>ClassesList</title>
</head>
<body>
	<%@ include file="Navbar.jsp"%>
	<table>
		<caption>Classes List</caption>
		<thead>
			<tr>
				<th>Classes</th>
				<th>Subjects</th>
				<th>Link For Subjects</th></tr>
				<tr><td>Class-1</td>
				<td>Subjects</td>
				<td><a href="C1Subjects.jsp" target="_self" id="A">View</td></tr>
				<tr><td>Class-2</td>
				<td>Subjects</td>
				<td><a href="C2Subjects.jsp" id="A">View</td></tr>
				<tr><td>Class-3</td>
				<td>Subjects</td>
				<td><a href="C3Subjects.jsp" id="A">View</td></tr>
			</tr>
		</thead>
	</table>

</body>
</html>