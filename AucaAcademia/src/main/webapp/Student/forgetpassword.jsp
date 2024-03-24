<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="assets2/bootstrap-5.3.0/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="assets2/bootstrap/min.css" />
    <link rel="stylesheet" href="assets2/css/style.css" />
    <link rel="stylesheet" href="assets2/css/header.css" />
    <link rel="stylesheet" href="assets2/css/login_signup.css" />
    <link rel="stylesheet" href="assets2/css/forms.css" />
    <title>AUCA Registration - Forgot password</title>
  </head>
  <body>
    <div class="login-signup">
      <section class="left-side container">
        <div class="auca-logo-container">
          <img
            src="assets2/images/auca_logo.png"
            alt=""
            class="auca-logo mt-5"
          />
        </div>

        <form method="post" action="./ForgotPassword" id="form1">
          <div class="aspNetHidden">
            <input
              type="hidden"
              name="__VIEWSTATE"
              id="__VIEWSTATE"
              value="5oiiAoTrxb8stmwlrx3+g3WnCWQAmm8wkRHVxZAy3Ym6eflHPpOottdwD8JDlyZbsIsCfusF9tuJ0PWAFJkoYMStD0OdKVweaF41coA2IGc="
            />
          </div>

          <div class="aspNetHidden">
            <input
              type="hidden"
              name="__VIEWSTATEGENERATOR"
              id="__VIEWSTATEGENERATOR"
              value="C633E78B"
            />
            <input
              type="hidden"
              name="__EVENTVALIDATION"
              id="__EVENTVALIDATION"
              value="LXD4bR0adTwxJmcuep6qhBGNqw6ZpI17SKuweILsXZDUDdKI3Xyjf/tuG4ZrJ8XqwBXsD39ytVgsfZw69kF8McDmQUc/yLW/xNSqjyzZY3T7qSZ1bfNOvGOrKSrcpOVzl4g/21OxLkpdNWF3jD3CRw=="
            />
          </div>
          <h2 class="h2 txt-prmry mt-5 text-center">Reset password</h2>
          <h2 class="txt-scndry mb-5 text-center info-txt">
            We will send password reset instructions on your email.
          </h2>
          <div class="card-body">
            <div class="row mt-2 form-inputs">
              <div class="form-group col-md-8">
                <label class="input-label">Enter your Email</label>
                <input
                  name="EmailTextBox"
                  type="text"
                  id="EmailTextBox"
                  class="form-control mt-2"
                />
              </div>
            </div>

            <div class="form-inputs">
              <input
                type="submit"
                name="ResetPassword"
                value="Send Reset Instructions"
                id="ResetPassword"
                class="btn blue-clr text-light mt-4 mb-3"
              />
              <span class="text-center info-txt mb-4"
                >Remember the password? <a href="login.jsp">Login</a></span
              >
              <span id="lblLoginMessage"></span>
            </div>
          </div>
        </form>
      </section>
      <section class="right-side"></section>
    </div>
    <script src="assets2/js/main.js"></script>
  </body>
</html>
