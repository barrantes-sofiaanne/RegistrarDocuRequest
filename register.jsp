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
    <title>Register - PUP Taguig Online Document Request System</title>
    <link rel="stylesheet" href="registration.css" />
  </head>
  <body>
    <div class="wrapper">
      <form action="register" method="post" class="register-form">
        <img src="images/pup_logo.png" alt="PUP Logo" />
        <h2>PUP Taguig Online Document Request System</h2>
        <h3>Register to create your account</h3>

        <div class="input-field">
          <input type="text" id="studentID" name="studentID" required />
          <label for="studentID">Enter your Student ID</label>
        </div>

        <div class="input-field">
          <input type="text" id="firstname" name="firstname" required />
          <label for="firstname">Enter your First Name</label>
        </div>

        <div class="input-field">
          <input type="text" id="middlename" name="middlename" />
          <label for="middlename">Enter your Middle Name</label>
        </div>

        <div class="input-field">
          <input type="text" id="lastname" name="lastname" required />
          <label for="lastname">Enter your Last Name</label>
        </div>

        <div class="input-field no-animation">
          <input type="date" id="birthday" name="birthday" required />
          <label for="birthday">Enter your Birthday</label>
        </div>

        <div class="input-field">
          <input type="text" id="contactNumber" name="contactNumber" required />
          <label for="contactNumber">Enter your Contact Number</label>
        </div>

        <div class="input-field">
          <input type="email" id="email" name="email" required />
          <label for="email">Enter your Email</label>
        </div>

        <div class="input-field">
          <input type="password" id="password" name="password" required />
          <label for="password">Create your password</label>
        </div>

        <button type="submit">Register</button>

        <div class="register">
          <p>Already have an account? <a href="index.jsp  ">Log in</a></p>
        </div>
      </form>
    </div>
  </body>
</html>
