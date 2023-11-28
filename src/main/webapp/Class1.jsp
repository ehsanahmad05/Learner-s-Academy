<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.entities.Teachers, com.entities.Students, com.entities.TeacherData, org.hibernate.query.*, com.helper.FactoryProvider, org.hibernate.Session, java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ForAll.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="FinalReport.jsp" />

<%

Session ses=FactoryProvider.getFactory().openSession();
					List li=ses.createQuery("from Students where sClass='Class-1'").list();
					Iterator it=li.iterator(); %>
 

	<table id="c1">
		<caption>Class-1</caption>
		<thead>
			<tr>
			    <th>StudentID</th>
			    <th>StudentName</th>
			</tr></thead>
			<tr>
			<%  while(it.hasNext()){
				Object o=(Object)it.next();
				Students s=(Students)o; 
				
				%> 
			
				<td><%=s.getsId()%></td>
				<td><%=s.getsName()%></td>		
			</tr>
		<%} %>
		
	</table>
	
	<table id="c3">
		<caption>Class-1</caption>
		<thead>
			<tr>
	            <th>SubjectID</th>
			    <th>SubjectNames</th></tr></thead>
			
			<tr><td>Hindi</td>
				<td>101</td></tr>
			<tr>
				<td>English</td>
				<td>102</td></tr>
			<tr><td>Mathematics</td>
				<td>103</td></tr>
			<tr><td>Science</td>
				<td>104</td></tr>
			<tr><td>History</td>
				<td>105</td></tr>
			</table>
	
	
	
	
	<% List li1=ses.createQuery("from TeacherData where teachClass='Class-1'").list();
					Iterator it1=li1.iterator(); %>
 
	<table id="c2">
		<caption>Class-1</caption>
		<thead>
			<tr>
			    <th>TeacherID</th>
			    <th>TeacherSubject</th>
				
				
			</tr></thead>
			<tr>
			<% while(it1.hasNext()){
				Object o=(Object)it1.next();
				TeacherData s1=(TeacherData)o; 
				
				%> 
			
				<td><%= s1.getTeachId() %></td>
				<td><%=s1.getTeachSubj() %></td>
			</tr>
		<%} %>
		
	</table>
</body>
</html>