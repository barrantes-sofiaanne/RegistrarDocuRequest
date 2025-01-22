<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Expires" content="0" />
<title>Online Document Request System</title>
</head>
<body>
	<h1>PUP Taguig Online Document Request System</h1>
	<h3>Login</h3>
	<form action="login" method="post">
		<label>Student ID: </label><br>
		<input type = "text" name="studentID" required><br>
		<label>Password: </label><br>
		<input type = "password" name="password" required><br>
		<br>
		<input type="submit">
	</form>
	<c:if test="${status == 'fail' }">
		<p>Incorrect Credentials</p>
	</c:if>
	<br>
	<a href="">Forgot Password</a>
	<br>
	<br>
	<a href="register.jsp">Sign up</a>
	
</body>
</html>