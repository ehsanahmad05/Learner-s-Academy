<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ClassesList.css">
<title>Class3 Subjects</title>
</head>
<body id="C1">
<%@ include file="Navbar.jsp" %>
	<table id="T1">
		<caption>Class-3</caption>
		<thead>
			<tr>
				<th>Subject Name</th>
				<th>Subject Id</th>
			</tr>
			<tr>
				<td>Hindi</td>
				<td>301</td>
			</tr>
			<tr>
				<td>English</td>
				<td>302</td>
			</tr>
			<tr>
				<td>Mathematics</td>
				<td>303</td>
			</tr>
			<tr>
				<td>Science</td>
				<td>304</td>
			</tr>
			<tr>
				<td>History</td>
				<td>305</td>
			</tr>
		</thead>
	</table>
<input id="button" type="button" onclick="location.href='ClassesList.jsp';" value="GoBack" />
</html>