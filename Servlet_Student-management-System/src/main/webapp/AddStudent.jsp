<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="AddStudentStyle.css">
</head>
<body>
    <div id="maindiv">
    <div id="divform">
    <h1>Enter Student Details</h1>
    <div id="card">
	<form action="add-student" method="post">
		<input type="number" placeholder="Enter StudentId" name="studentId"><br>
		<input type="text" placeholder="Enter StudentName" name="studentName"><br>
		<input type="number" placeholder="Enter StudentAge" name="studentAge"><br>
		<input type="text" placeholder="Enter StudentEmail" name="studentEmail"><br>
		<input type="text" placeholder="Enter StudentCourse" name="studentCourse"><br>
		<input type="text" placeholder="Enter StudentCity" name="studentCity"><br>
        <span id="btn">
		<input type="submit" value="SUBMIT" id="btn1">
        <input type="reset" value="RESET" id="btn2">
        </span>

	</form>
    </div>
    </div>
    </div>

</body>
</html>