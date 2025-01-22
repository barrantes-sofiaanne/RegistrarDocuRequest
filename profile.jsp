<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.registrar.CacheBack" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome, Student!</h1>
	
	<!-- NAVBAR OR SIDEBAR -->
	<a href="request.jsp">Request</a>
	<form action="logout" method="get">
		<button type="submit" value="logout">Logout</button>
	</form>
	
</body>
</html>