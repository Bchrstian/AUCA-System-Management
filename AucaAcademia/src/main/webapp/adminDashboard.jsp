<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>AUCA | Admin Dashboard</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="shortcut icon" href="images/favicon.png" />
    <script src="assets/script.js"></script>
  </head>
  <body>
    <section class="main">
      <nav>
        <a href="adminDashboard.jsp" class="logo">
          <img src="images/logo.png" height="40px" alt="AUCA Logo" />
        </a>
        <input class="menu-btn" type="checkbox" id="menu-btn" />
        <label class="menu-icon" for="menu-btn">
          <span class="nav-icon"></span>
        </label>
        <ul class="menu">
          <li><a href="Report.jsp">Report</a></li>
          <li><a href="Result.jsp">Result</a></li>
          <li><a href="Profile.jsp">Profile</a></li>
          <!-- Added Profile Page Link -->
          <li>
            <a
              href="index.jsp"
              class="active"
              onclick="document.getElementById('id01').style.display='block'"
            >
              Logout
            </a>
          </li>
        </ul>
      </nav>
      <div class="home-content">
        <div class="home-text">
          <h3>Welcome to the Admin Portal</h3>
          <!-- Added Welcome Message -->
          <h1>ADVENTIST UNIVERSITY OF CENTRAL AFRICA</h1>
        </div>
      </div>
    </section>

    <section class="services">
      <div class="services-heading">
        <h2>Services</h2>
      </div>
      <div class="box-container">
        <!--box-1-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Add New TEACHER</font>
          <!--btn--------->
          <a href="Teacher.jsp">Go</a>
        </div>
        <!--box-2-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Add New COURSES DEFINITION</font>

          <!--btn--------->
          <a href="CourseDefinition.jsp">Go</a>
        </div>
        <!--box-3-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Add New SEMESTER</font>

          <!--btn--------->
          <a href="Semester.jsp">Go</a>
        </div>
        <!--box-4-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Add New AcademicUnit</font>

          <!--btn--------->
          <a href="AcademicUnit.jsp">Go</a>
        </div>
        <!--box-5-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Add New Course</font>

          <!--btn--------->
          <a href="Course.jsp">Go</a>
        </div>
        <!--box-5-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Add New Student Course</font>

          <!--btn--------->
          <a href="StudentCourse.jsp">Go</a>
        </div>
        <!--box-5-------->
        <div class="box">
          <img src="images/icon5.png" />
          <font>Edit Student Registration</font>

          <!--btn--------->
          <a href="StudentRegistrationAdmin.jsp">Go</a>
        </div>
      </div>
    </section>
    
      <section class="delete-semester">
        <h2>Delete Semester</h2>
        <form action="deleteSemesterServlet" method="post">
            <label for="semesterName">Enter Semester Name to Delete:</label>
            <input type="text" id="semesterName" name="semesterName" required />
            <input type="submit" value="Delete Semester" />
        </form>
    </section>





    <!-- Other Admin Pages -->
    <section class="admin-pages">
      <div class="admin-page">
        <h2>User Management</h2>
        <ul>
          <li><a href="AddUser.jsp">Add User</a></li>
          <li><a href="ManageUsers.jsp">Manage Users</a></li>
        </ul>
      </div>
      <div class="admin-page">
        <h2>Data Analysis</h2>
        <ul>
          <li><a href="Analytics.jsp">Analytics Dashboard</a></li>
          <li><a href="Reports.jsp">Generate Reports</a></li>
        </ul>
      </div>
      <!-- Add more admin pages as needed -->
    </section>

    <footer>
      <p>
        &copy; Copyright (C) - 2024 | Developed By
        <a href="#">BYIRINGIRO Christian</a>
      </p>
    </footer>
  </body>
</html>
