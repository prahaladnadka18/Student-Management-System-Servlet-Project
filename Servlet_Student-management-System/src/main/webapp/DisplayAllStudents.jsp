<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="DisplayAllStudents.css">
</head>
<body>
<%ResultSet rs = (ResultSet) request.getAttribute("resultset");%>
	<div>
	<h1>All Students Details</h1>
	<table id="content-table">
		<tr>
			<th>StudentId</th>
			<th>StudentName</th>
			<th>StudentEmail</th>
			<th>StudentAge</th>
			<th>StudentCourse</th>
			<th>StudentCity</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getInt(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><a href="find-by-id?studentId=<%=rs.getInt(1)%>" id="btn1">Update</a></td>
			<td><a href="delete-student?studentId=<%=rs.getInt(1)%>"" id="btn1">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<div id="go">
	<h2><a href="index.jsp">Go To DashBoard</a></h2>
    </div>
    </div>
</body>

</html>