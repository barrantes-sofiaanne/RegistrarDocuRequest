<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      http-equiv="Cache-Control"
      content="no-cache, no-store, must-revalidate"
    />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - PUP Taguig Online Document Request System</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="wrapper">
      <form action="login" method="post" class="login-form">
        <img src="images/pup_logo.png" alt="PUP Logo" />
        <h2>PUP Taguig Online Document Request System</h2>
        <h4>Login to start your session</h4>

        <c:if test="${status == 'fail'}">
          <p class="error-message">Incorrect credentials. Please try again.</p>
        </c:if>

        <div class="input-field">
          <input type="text" id="studentID" name="studentID" required />
          <label for="studentID">Enter your Student ID</label>
        </div>

        <div class="input-field">
          <input type="password" id="password" name="password" required />
          <label for="password">Enter your password</label>
        </div>

        <div class="forget">
          <a href="#">Forgot password?</a>
        </div>

        <button type="submit">Log In</button>

        <div class="register">
          <p>Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
      </form>
    </div>
  </body>
</html>
