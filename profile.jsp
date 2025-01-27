<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ page import="com.registrar.CacheBack" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome, Student!</title>
    <link rel="stylesheet" href="profile.css" />
  </head>
  <body>
    <div class="container">
      <h1>Welcome, Student!</h1>

      <a href="request.jsp">Request</a>

      <form action="logout" method="get">
        <button type="submit" class="logout-button" value="logout">
          Logout
        </button>
      </form>

      <div class="footer">
        <p>Thank you for visiting!</p>
      </div>
    </div>
  </body>
</html>
