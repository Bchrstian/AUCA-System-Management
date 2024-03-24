<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets3/bootstrap/min.css" />
    <link rel="stylesheet" href="assets3/css/style.css" />
    <link rel="stylesheet" href="assets3/css/header.css" />

    <title>AUCA Registration - Teacher Dashboard</title>
    <style>
      .form-group {
        margin-bottom: 20px;
      }
    </style>
  </head>
  <body>
    <form method="post" action="./TeacherCourseSelectionServlet" id="form1">
      <header>
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">
                <img
                  src="https://registration.auca.ac.rw/assets/images/auca_logo.png"
                  alt="AUCA Logo"
                  width="450px"
                  height="100px"
                  class="d-inline-block align-top"
                />
                <br />
                ADVENTIST UNIVERSITY OF CENTRAL AFRICA STUDENT PORTAL
              </a>
              <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <br />
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                  <li class="nav-item">
                    <a class="nav-link active" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="#">Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Logout</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <div class="container mt-4">
        <h1>Welcome, Lecture</h1>
        <p>Please select the course you want to teach this semester:</p>
        <div class="form-group">
          <label for="course">Select Course:</label>
          <select class="form-control" id="course" name="course_code">
            <option value="INSY228">Programming with C</option>
            <option value="STAT223">Probability and Statistics</option>
            <option value="INSY228">Programming with C</option>
<option value="STAT223">Probability and Statistics</option>
<option value="INSY230">Object-Oriented Programming</option>
<option value="INSY310">Data Structures and Algorithms</option>
<option value="INSY321">Software Engineering</option>
<option value="INSY229">Computer Networks</option>
<option value="COSC323">Routing and Switching</option>
<option value="INSY426">Mobile Programming</option>
<option value="INSY423">Dot Net</option>
<option value="COSC419">Web Design</option>
<option value="RELT221">Philosophy, Science and Religion</option>
<option value="INSY324">Java Programming</option>
<option value="INSY425">Introduction to Big Data</option>
<option value="INSY413">Web Technology and Internet</option>
<option value="COSC422">Internship</option>
<!-- Add more courses here -->
            
            <!-- Add more options here -->
          </select>
        </div>
        <div class="form-group">
          <label for="teacherID">Teacher ID:</label>
          <input type="text" class="form-control" id="teacherID" name="teacher_id" placeholder="Enter Teacher ID">
        </div>
        
        <button type="submit" class="btn btn-primary mt-3">
          Select Course
        </button>
      </div>
    </form>

    <footer class="footer mt-auto py-3 bg-light">
      <div class="container">
        <span class="text-muted"
          >Â© 2024 Adventist University of Central Africa</span
        >
      </div>
    </footer>

    <script src="assets3/bootstrap-5.3.0/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
