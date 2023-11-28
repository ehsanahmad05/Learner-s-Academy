<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.entities.Teachers, com.Servlets.AddTeacherServ, org.hibernate.query.*, com.helper.FactoryProvider, org.hibernate.Session, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ForAll.css">
<title>AssigningTeacher</title>
</head>
<body>
	<%@ include file="Navbar.jsp"%>
	<h3>AssigningTeacher</h3>
	
<div id="X">
	
<form action="teachdata" method="post">
			<% 
Session ses=FactoryProvider.getFactory().openSession();
					List li=ses.createQuery("from Teachers").list();
					Iterator it=li.iterator(); %>

			<label>Select Teacher Id:</label> 
			<select name="tid">
				<option value="Select">Select...</option>
				<%  while(it.hasNext()){
						Object o=(Object)it.next();
						Teachers t=(Teachers)o; 
						String i=t.getTeacherId();
						%>
				<option value="<%=i %>"><%=i %></option>
				<% } %>
			</select><br><br>
			
			 <label>Select Class:</label> 
			<select name="class">
				<option value="Select...">Select...</option>
				<option value="Class-1">Class-1</option>
				<option value="Class-2">Class-2</option>
				<option value="Class-3">Class-3</option>
			</select><br><br>
			
			
			 <label>Select Subjects:</label><br> 
			<input type="checkbox" name="subjects" value="Hindi">Hindi<br>
			<input type="checkbox" name="subjects" value="English">English<br>
			<input type="checkbox" name="subjects" value="Mathematics">Mathematics<br>
			<input type="checkbox" name="subjects" value="Science">Science<br>
			<input type="checkbox" name="subjects" value="History">History<br><br><br> <br>
			
			
			 <input type="submit" id="submit" value="Submit"></input>
		</form>
	</div>
</body>
</html>