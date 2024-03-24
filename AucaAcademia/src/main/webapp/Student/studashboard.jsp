<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link rel="stylesheet" href="../assets3/bootstrap/min.css" />
    <link rel="stylesheet" href="../assets3/css/style.css" />
    <link rel="stylesheet" href="../assets3/css/header.css" />

    <title>AUCA Registration - Student Home</title>
    <style>
      .table th,
      .table td {
        overflow: visible;
        white-space: nowrap;
        width: auto;
      }
    </style>
  </head>
  <body>
    <form method="post" action="#" id="form1">
      <div class="aspNetHidden">
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
        <input
          type="hidden"
          name="__EVENTARGUMENT"
          id="__EVENTARGUMENT"
          value=""
        />
        <input
          type="hidden"
          name="__VIEWSTATE"
          id="__VIEWSTATE"
          value="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"
        />
      </div>
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
        <h1>Welcome, Student</h1>
        <p>Please select the courses you want to register for this semester:</p>
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Course Code</th>
              <th>Course Name</th>
              <th>Credits</th>
              <th>Select</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>INSY 228</td>
              <td>Programming with C</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE101" /></td>
            </tr>
            <tr>
              <td>STAT 223</td>
              <td>Probability and Statistics</td>
              <td>3</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 230</td>
              <td>Object-Oriented Programming</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 310</td>
              <td>Data Structures and Algorithms</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 321</td>
              <td>Software Engineering</td>
              <td>3</td>
              <td><input type="checkbox" name="chkCourse" value="CSE301" /></td>
            </tr>

            <tr>
              <td>INSY 229</td>
              <td>Computer Networks</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE101" /></td>
            </tr>
            <tr>
              <td>COSC 323</td>
              <td>Routing and Switching</td>
              <td>3</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 426</td>
              <td>Mobile Programming</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 423</td>
              <td>Dot Net</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>COSC 419</td>
              <td>Web Design</td>
              <td>3</td>
              <td><input type="checkbox" name="chkCourse" value="CSE301" /></td>
            </tr>

            <tr>
              <td>RELT 221</td>
              <td>Philosophy, Science and Religion</td>
              <td>2</td>
              <td><input type="checkbox" name="chkCourse" value="CSE101" /></td>
            </tr>
            <tr>
              <td>INSY 324</td>
              <td>Java Programming</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 425</td>
              <td>Introduction to Big Data</td>
              <td>3</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>INSY 413</td>
              <td>Web Technology and Internet</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE201" /></td>
            </tr>
            <tr>
              <td>COSC 422</td>
              <td>Internship</td>
              <td>4</td>
              <td><input type="checkbox" name="chkCourse" value="CSE301" /></td>
            </tr>
            <!-- Add more courses here -->
          </tbody>
        </table>
        

        <button type="submit" class="btn btn-primary">Register Course</button>
      </div>
    </form>
    
   <style>
    /* Style for the form container */
    .form-container {
        width: 300px; /* Adjust width as needed */
        margin: 20px auto; /* Center the form horizontally and add spacing */
    }

    /* Style for form inputs */
    .form-container input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        box-sizing: border-box; /* Include padding and border in the width */
    }

    /* Style for the submit button */
    .form-container button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #0d6efd; 
        color: white;
        border: none;
        cursor: pointer;
    }

    /* Hover effect for the submit button */
    .form-container button[type="submit"]:hover {
        background-color: #0c3fc2; 
    }
</style>

<div class="form-container">
    <form action="StudentRegistrationServlet" method="post">
        <!-- Make sure the 'name' attributes match the parameter names in the servlet -->
        <input type="text" name="student_id" placeholder="Student ID">
        <input type="text" name="semester_id" placeholder="Semester ID">
        <input type="text" name="department_name" placeholder="Department Name">
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
   
    
    
    

    <footer class="footer mt-auto py-3 bg-light">
      <div class="container">
        <span class="text-muted"
          >© 2024 Adventist University of Central Africa</span
        >
      </div>
    </footer>

    <script src="../assets3/bootstrap-5.3.0/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
