<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Enter Student Details</h1>
	<form action="add-student" method="post">
		<input type="number" placeholder="Enter StudentId" name="studentId">
		<input type="text" placeholder="Enter StudentName" name="studentName">
		<input type="number" placeholder="Enter StudentAge" name="studentAge">
		<input type="text" placeholder="Enter StudentEmail" name="studentEmail">
		<input type="text" placeholder="Enter StudentCourse" name="studentCourse">
		<input type="text" placeholder="Enter StudentCity" name="studentCity">
		<input type="submit" value="SUBMIT">

	</form>


</body>
</html>