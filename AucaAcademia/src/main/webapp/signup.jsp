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
  <title>AUCA Registration - Signup</title>
  <script>
  function validateForm() {
      var email = document.getElementById("txtEmail").value;
      var password1 = document.getElementById("txtPswd1").value;
      var password2 = document.getElementById("txtPswd2").value;
      var role = document.getElementById("ddlRole").value;
      var validationErrors = document.getElementById("validationErrors");

      // Reset previous error messages
      validationErrors.innerHTML = "";

      if (email.trim() === "" || password1.trim() === "" || password2.trim() === "" || role === "") {
        validationErrors.innerHTML += '<span style="color: red;">Please fill in all fields.</span><br>';
        return false;
      }

      if (password1 !== password2) {
        validationErrors.innerHTML += '<span style="color: red;">Passwords do not match.</span><br>';
        return false;
      }

      if (password1.length < 8 || !/\d/.test(password1) || !/[a-zA-Z]/.test(password1)) {
        validationErrors.innerHTML += '<span style="color: red;">Password must be at least 8 characters long and include both letters and numbers.</span><br>';
        return false;
      }

      // If all validations pass, return true to allow form submission
      return true;
    }

    function showAdditionalFields() {
      var role = document.getElementById("ddlRole").value;
      var additionalFields = document.getElementById("additionalFields");
      var additionStu = document.getElementById("additionalFieldsStu");

      if (role === "teacher") {
        additionalFields.style.display = "block"; // Show additional fields for teacher
        additionStu.style.display = "none";
      } else if (role === "student") {
    	  additionalFields.style.display = "none";
        additionStu.style.display = "block"; // Show additional field for student
      } else {
    	  additionStu.style.display = "none";
        additionalFields.style.display = "none"; // Hide additional fields if role is not selected
      }
    }
  </script>
</head>
<body>
  <div class="login-signup">
    <section class="left-side container">
      <div class="auca-logo-container">
        <img src="assets2/images/auca_logo.png" alt="" class="auca-logo mt-5" />
      </div>

      <div class="container">
        <h2 class="h5 txt-prmry mb-5 mt-5 text-center">Create new account</h2>
        <% if (request.getParameter("error") != null && request.getParameter("error").equals("password")) { %>
          <span style="color: red;">Password must be at least 8 characters long and include both letters and numbers.</span>
        <% } %>
        <form method="post" action="./Signup" id="form1" onsubmit="return validateForm()">
          <div class="card-body">
            <div class="row mt-2 form-inputs">
              <div class="form-group col-md-8">
                <label class="input-label">Email</label>
                <input
                  name="txtEmail"
                  type="text"
                  id="txtEmail"
                  class="form-control mt-2"
                />
              </div>
            </div>

            <div class="row mt-2 form-inputs">
              <div class="form-group col-md-8">
                <label class="input-label">Password</label>
                <input
                  name="txtPswd1"
                  type="password"
                  id="txtPswd1"
                  class="form-control mt-2"
                />
              </div>
            </div>

            <div class="row mt-2 form-inputs">
              <div class="form-group col-md-8">
                <label class="input-label">Re-type password</label>
                <input
                  name="txtPswd2"
                  type="password"
                  id="txtPswd2"
                  class="form-control mt-2"
                />
              </div>
            </div>

            <div class="row mt-2 form-inputs">
              <div class="form-group col-md-8">
                <label class="input-label">Select your role</label>
                <select name="ddlRole" id="ddlRole" class="form-control mt-2" onchange="showAdditionalFields()">
                  <option value="">Select Role</option>
                  <option value="admin">Admin</option>
                  <option value="student">Student</option>
                  <option value="teacher">Teacher</option>
                </select>
              </div>
            </div>

            <div id="additionalFields" style="display: none;">
              <!-- Additional input fields for teachers -->
              <div class="row mt-2 form-inputs">
                <div class="form-group col-md-8">
                  <label class="input-label">First Name</label>
                  <input name="txtFirstName" type="text" id="txtFirstName" class="form-control mt-2" />
                </div>
              </div>
              <div class="row mt-2 form-inputs">
                <div class="form-group col-md-8">
                  <label class="input-label">Last Name</label>
                  <input name="txtLastName" type="text" id="txtLastName" class="form-control mt-2" />
                </div>
              </div>
              <div class="row mt-2 form-inputs">
                <div class="form-group col-md-8">
                  <label class="input-label">Qualification</label>
                  <input name="txtQualification" type="text" id="txtQualification" class="form-control mt-2" />
                </div>
              </div> 
            </div>
            
            <div id="additionalFieldsStu" style="display: none;">
              <!-- Additional input fields for teachers -->
              <div class="row mt-2 form-inputs">
                <div class="form-group col-md-8">
                  <label class="input-label">First Name</label>
                  <input name="stutxtFirstName" type="text" id="txtFirstName" class="form-control mt-2" />
                </div>
              </div>
              <div class="row mt-2 form-inputs">
                <div class="form-group col-md-8">
                  <label class="input-label">Last Name</label>
                  <input name="stutxtLastName" type="text" id="txtLastName" class="form-control mt-2" />
                </div>
              </div>

              <!-- Additional input field for students -->
              <div class="row mt-2 form-inputs">
                <div class="form-group col-md-8">
                  <label class="input-label">Date of Birth</label>
                  <input name="txtDOB" type="text" id="txtDOB" class="form-control mt-2" />
                </div>
              </div>
            </div>
            <div id="validationErrors"></div>

            <div class="form-inputs">
              <input
                type="submit"
                name="btnValidate"
                value="Create Account"
                id="btnValidate"
                class="btn blue-clr mt-4 mb-3 text-light"
              />
              <span class="text-center info-txt mb-4"
                >Already have an account? <a href="login.jsp">Login</a></span
              >
              <span id="lblInsertResult"></span>
            </div>
          </div>
        </form>
      </div>
    </section>
    <section id="right-side-signup"></section>
  </div>
  <script src="assets2/js/main.js"></script>
</body>
</html>
