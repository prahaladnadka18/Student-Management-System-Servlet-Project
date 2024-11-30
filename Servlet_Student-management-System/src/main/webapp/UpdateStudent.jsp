<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<link rel="stylesheet" href="UpdateStudentStyle.css">
</head>

<body>

<%ResultSet rs = (ResultSet) request.getAttribute("resultset");
  rs.next();
%>
	<div id="maindiv">
        <div id="divform">
        <h1>Update Student Details</h1>
        <div id="card">
	<form action="save-update-student" method="post">
		
			<input type="number" value="<%=rs.getInt(1)%>" name="studentId" readonly="readonly">
		
			<input type="text" value="<%=rs.getString(2)%>" name="studentName">
		
			<input type="text" value="<%=rs.getString(3)%>" name="studentEmail">
		
			<input type="number" value="<%=rs.getInt(4)%>" name="studentAge">
		
			<input type="text" value="<%=rs.getString(5)%>" name="studentCourse">
		
			<input type="text" value="<%=rs.getString(6)%>" name="studentCity">
		
		
        <span id="btn">
            <input type="submit" value="SUBMIT" id="btn1">
            </span>
	</form>
</div>
</div>
</div>
</body>
</html>