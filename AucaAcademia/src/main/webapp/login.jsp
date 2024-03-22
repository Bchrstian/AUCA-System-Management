<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="assets2/bootstrap/min.css" />
  <link rel="stylesheet" href="assets2/css/style.css" />
  <link rel="stylesheet" href="assets2/css/header.css" />
  <link rel="stylesheet" href="assets2/css/login_signup.css" />
  <link rel="stylesheet" href="assets2/css/forms.css" />
  <title>AUCA Registration - Login</title>
  <script>
    function showError(message) {
      document.getElementById("lblLoginMessage").innerText = message;
    }

    function validateForm() {
      var username = document.getElementById("txtUsername").value;
      var password = document.getElementById("txtPassword").value;

      if (username.trim() === "" || password.trim() === "") {
        showError("Username and password are required.");
        return false;
      }

      return true;
    }
  </script>
</head>
<body>
  <div class="login-signup">
    <section class="left-side container">
      <div class="auca-logo-container">
        <img src="assets2/images/auca_logo.png" alt="" class="auca-logo mt-5" />
      </div>

      <form method="post" action="./Login" id="form1" onsubmit="return validateForm()">
        <h2 class="h2 txt-prmry mt-5 text-center">Login</h2>
        <h2 class="txt-scndry mb-5 text-center info-txt">Welcome! Please enter your details.</h2>
        <div class="card-body">
          <div class="row mt-2 form-inputs">
            <div class="form-group col-md-8">
              <label class="input-label">Enter your Email or ID</label>
              <input name="txtUsername" type="text" id="txtUsername" class="form-control mt-2" />
            </div>
          </div>
          <div class="row mt-2 form-inputs">
            <div class="form-group col-md-8">
              <label class="input-label">Password</label>
              <input name="txtPassword" type="password" id="txtPassword" class="form-control mt-2" />
              <a href="forgetpassword.jsp" class="foget-password-txt">Forgot password</a>
            </div>
          </div>

          <div class="form-inputs">
            <input type="submit" name="btnLogin" value="Sign In" id="btnLogin" class="btn blue-clr mt-4 mb-3 text-light" />
            <span class="text-center info-txt mb-4">Don't have an account? <a href="signup.jsp">Sign Up</a></span>
            <span id="lblLoginMessage" style="color: red;">
              <% if (request.getAttribute("errorMessage") != null) { %>
                <%= request.getAttribute("errorMessage") %>
              <% } %>
            </span>
          </div>
        </div>
      </form>
    </section>
    <section class="right-side"></section>
  </div>
  <script src="assets2/js/main.js"></script>
   <script src="index.js"></script>
</body>
</html>
