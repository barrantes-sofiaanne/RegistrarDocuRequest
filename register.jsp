<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
</head>
<body>
	<h1>PUP Taguig Online Document Request System</h1>
	<h3>Register</h3>
	<form action="register" method="post">
		<label>Student ID: </label><br>
		<input type = "text" name="studentID" value="${param.studentID}" required><span style="color: red;">${studentIdError}</span><br>
		<label>Last Name: </label><br>
		<input type = "text" name="lastName" value="${param.lastName}" required><span style="color: red;">${lastNameError}</span><br>
		<label>First Name: </label><br>
		<input type = "text" name="firstName" value="${param.firstName}" required><span style="color: red;">${firstNameError}</span><br>
		<label>Middle Name: </label><br>
		<input type = "text" name="middleName" value="${param.middleName}"><br>
		<label>Birthday: </label><br>
		<input type="date" id="birthday" name="birthday" value="${param.birthday}" required
           min="1990-01-01" max="2012-01-01"><br>
        <label>Contact Number: </label><br>
		<input type = "tel" name="contact" value="${param.contact}" required><span style="color: red;">${phoneNumberError}</span><br>
		<label>Email: </label><br>
		<input type = "email" name="email" value="${param.email}" required><span style="color: red;">${emailError}</span><br>
		<label>Create Password: </label><br>
		<input type = "password" name="createPass" value="${param.createPass}" required><span style="color: red;">${passwordError}</span><br>
		<label>Confirm Password: </label><br>
		<input type = "password" name="confirmPass" required><span style="color: red;">${passwordNotMatch}</span><br>
		<br>
		<input type="submit">
	</form>
	<br>
	<br>
	<a href="index.jsp">Already have an account? Login</a>
	
</body>
</html>