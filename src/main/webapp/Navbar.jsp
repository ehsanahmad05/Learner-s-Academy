<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<% String s=(String)session.getAttribute("email"); %>
<div id="h"><h4 style=color-black;><%=s %></h4></div>
<div id="nav">
<div><a href="Home.jsp">Home</a></div>
<div><a href="ClassesList.jsp">Classes</a></div>
<div><a href="AddTeachers.jsp">AddTeachers </a></div>
<div><a href="AddStudents.jsp">AddStudents </a></div>
<div><a href="AssignTeachers.jsp">AssignTeacher </a></div>
<div><a href="FinalReport.jsp">Final Report </a></div>
<div><a href="Logout.jsp">Logout </a></div><br>
</div>

</body>
</html>