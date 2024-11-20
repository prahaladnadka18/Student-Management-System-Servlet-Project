<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	ResultSet rs = (ResultSet) request.getAttribute("resultset");
	rs.next();
	%>

	<h2>Update Student Details:</h2>

	<form action="save-update-student" method="post">
		<h2>
			<input type="number" value="<%=rs.getInt(1)%>" name="studentId" readonly="readonly">
		</h2>
		<h2>
			<input type="text" value="<%=rs.getString(2)%>" name="studentName">
		</h2>
		<h2>
			<input type="text" value="<%=rs.getString(3)%>" name="studentEmail">
		</h2>
		<h2>
			<input type="number" value="<%=rs.getInt(4)%>" name="studentAge">
		</h2>
		<h2>
			<input type="text" value="<%=rs.getString(5)%>" name="studentCourse">
		</h2>
		<h2>
			<input type="text" value="<%=rs.getString(6)%>" name="studentCity">
		</h2>
		<h2>
			<input type="submit" value="SUBMIT">
		</h2>
	</form>

</body>
</html>