<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ClassesList.css">
<title>Class2 Subjects</title>
</head>
<body id="C1">
<%@ include file="Navbar.jsp" %>
	<table id="T1">
		<caption>Class-2</caption>
		<thead>
			<tr>
				<th>Subject Name</th>
				<th>Subject Id</th>
			</tr>
			<tr>
				<td>Hindi</td>
				<td>201</td>
			</tr>
			<tr>
				<td>English</td>
				<td>202</td>
			</tr>
			<tr>
				<td>Mathematics</td>
				<td>203</td>
			</tr>
			<tr>
				<td>Science</td>
				<td>204</td>
			</tr>
			<tr>
				<td>History</td>
				<td>205</td>
			</tr>
		</thead>
	</table>
<input id="button" type="button" onclick="location.href='ClassesList.jsp';" value="GoBack" />
</body>
</html>