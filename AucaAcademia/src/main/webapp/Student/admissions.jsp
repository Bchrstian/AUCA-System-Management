<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Adventist University of Central Africa</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
   <header class="main-header">
      <div class="top-bar">
        <div class="row">
          <nav class="custom-nav">
            <a href="#">Apply</a>
            <a href="#">Online Registration</a>
            <a href="#">e-Library</a>
            <a href="#">Newsletter</a>
            <a href="#" onclick="showDashboard()">Dashboard</a>
            <!-- Modal for Role Selection -->
            <!-- Modal for Role Selection -->
            <div id="roleSelectionModal" class="modal">
              <div class="modal-content" style="text-align: center">
                <h2 style="color: blue; font-size: 24px">
                  Welcome to the AUCA Dashboard
                </h2>
                <p style="font-size: 18px">
                  Your gateway to academic and administrative tools.
                </p>
                <p>The dashboard provides access to:</p>
                <ul style="text-align: left">
                  <li>Student information and courses for students</li>
                  <li>Teaching resources and research tools for teachers</li>
                  <li>
                    Administrative controls and analytics for administrators
                  </li>
                </ul>
                <h3 style="color: blue; font-size: 20px">
                  Please select your role to continue:
                </h3>
                <ul
                  class="special-ul"
                  style="
                    display: inline-block;
                    text-align: center;
                    list-style-type: none;
                  "
                >
                  <li style="margin-right: 20px">
                    <a href="#" onclick="redirectToDashboard('student')"
                      >Student</a
                    >
                  </li>
                  <li style="margin-right: 20px">
                    <a href="#" onclick="redirectToDashboard('teacher')"
                      >Teacher</a
                    >
                  </li>
                  <li>
                    <a href="#" onclick="redirectToDashboard('admin')">Admin</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
          <script>
            // Show the role selection modal when the "Dashboard" link is clicked
            function showDashboard() {
              document.getElementById("roleSelectionModal").style.display =
                "block";
            }

            // Hide the modal when the user clicks outside of it or on the close button
            window.onclick = function (event) {
              var modal = document.getElementById("roleSelectionModal");
              if (event.target == modal) {
                modal.style.display = "none";
              }
            };

            // Function to handle role selection and redirection
            function redirectToDashboard(role) {
              switch (role) {
                case "student":
                  // Redirect to student dashboard
                  window.location.href = "studentDashboard.jsp";
                  break;
                case "teacher":
                  // Redirect to teacher dashboard
                  window.location.href = "teacherDashboard.jsp";
                  break;
                case "admin":
                  // Redirect to admin dashboard
                  window.location.href = "adminDashboard.jsp";
                  break;
                default:
                  alert("Invalid role selection!");
              }

              // Hide the modal after redirection
              document.getElementById("roleSelectionModal").style.display =
                "none";
            }
          </script>

          <div class="social-icons">
            <img src="./assets/icons/fb.png" alt="facebook" width="20px" />
            <img src="./assets/icons/twitter.png" alt="twitter" width="20px" />
            <img src="./assets/icons/ig.png" alt="instagram" width="20px" />
          </div>
        </div>
        <div class="row">
          <p>
            Apply Now for March, 2024 Intake Academic year 2023-2024 Call
            <b>+250 724796998</b>
          </p>
        </div>
      </div>
      <div class="middle-bar">
        <img src="./assets/logo/auca-logo.png" alt="Auca Logo" />
        <nav class="main-header middle-bar unchanged-nav">
          <a href="">29<sup>th</sup> Graduation</a>
          <a href="apply.jsp">Online Application</a>
          <a href="onlineRegistration.jsp">Online Registration</a>
        </nav>
      </div>
      <div class="main-nav-bar">
        <nav>
          <ul>
            <li><a href="#" onclick="showContent('home')">Home</a></li>
            <li class="dropdown">
              <a href="#" onclick="showContent('about')">About</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('background')"
                    >Background</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('vision_mission')"
                    >Vision and Mission</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('beliefs_values')"
                    >Beliefs and Values</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('policies')"
                    >AUCA Policies</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('location')">Location</a>
                </li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" onclick="showContent('admissions')">Admissions</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('undergraduate')"
                    >Undergraduate</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('graduate')">Graduate</a>
                </li>
                <li>
                  <a href="#" onclick="showSubContent('international')"
                    >International</a
                  >
                </li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" onclick="showContent('academics')">Academics</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('AcademicCalender')"
                    >Academic Calender 2023 - 2024</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('courses')"
                    >Undergraduate Programmes</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('Bullentin')"
                    >Academic Bulletin</a
                  >
                </li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" onclick="showContent('media_center')">Media Center</a>
              <ul class="dropdown-content">
                <li><a href="#" onclick="showSubContent('news')">News</a></li>
                <li>
                  <a href="#" onclick="showSubContent('events')">Events</a>
                </li>
                <li>
                  <a href="#" onclick="showSubContent('gallery')">Gallery</a>
                </li>
                <li>
                  <a href="#" onclick="showSubContent('videos')">Videos</a>
                </li>
                <li>
                  <a href="#" onclick="showSubContent('press_releases')"
                    >Press Releases</a
                  >
                </li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" onclick="showContent('research')">Research</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('AUCA Journal')"
                    >AUCA Journal</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('AUCA Library')"
                    >AUCA Library</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('research_manual')"
                    >Research Manual</a
                  >
                </li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" onclick="showContent('auca_alumni')">Auca Alumni</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('auca_campuses')"
                    >Auca Campuses</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('auca_videos')"
                    >Auca Videos</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('auca_ngoma_campus')"
                    >Auca Ngoma Campus</a
                  >
                </li>
              </ul>
            </li>

            <li><a href="#" onclick="showContent('apply')">Apply</a></li>
          </ul>
        </nav>
        <div class="search-container">
          <input type="search" name="search" placeholder="Search..." />
          <label for="search"
            ><img src="./assets/icons/search.png" alt="search"
          /></label>
        </div>
      </div>
    </header>
    <main class="page-content">
      <h2>About AUCA</h2>
    </main>
    <footer class="main-footer">
      <div class="top-row">
        <div class="col col1">
          <h4>SINCE 1984</h4>
          <div class="content">
            <h6>ADVENTIST UNIVERSITY OF CENTRAL AFRICA</h6>
            <em>Masoro Hill, City of Kigali</em>
            <address>PO Box 2461, Kigali Rwanda</address>
          </div>
          <div class="content">
            <p>Admission Inquiries:</p>
            <p>admissions@auca.ac.rw or call</p>
            <p>+250 724796998</p>
          </div>

          <div class="content">
            <p>Media Inquiries:</p>
            <p>marketing@auca.ac.rw</p>
          </div>
          <div class="content">
            <p>General Inquiries:</p>
            <p>info@auca.ac.rw</p>
          </div>
        </div>
        <div class="col col2">
          <h4>FOLLOW US</h4>
          <div class="content">
            <div>
              <img src="./assets/icons/fb.png" alt="facebook" width="40px" />
              <p>Facebook</p>
            </div>
            <div>
              <img src="./assets/icons/ig.png" alt="instagram" width="40px" />
              <p>Instagram</p>
            </div>
            <div>
              <img
                src="./assets/icons/twitter.png"
                alt="twitter"
                width="40px"
              />
              <p>Twitter</p>
            </div>
          </div>
        </div>
        <div class="col col3">
          <h4>LOCATION</h4>
          <div class="map">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6589.66919085748!2d30.14119830549723!3d-1.945821294741769!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x19dca76ec77abb07%3A0x39b5394a977ee4a1!2sAdventist%20University%20of%20Central%20Africa!5e0!3m2!1sen!2srw!4v1710338113657!5m2!1sen!2srw"
              width="200"
              height="150"
              style="border: 0"
              allowfullscreen=""
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
        </div>
      </div>
      <div class="bottom-row">
        <p>
          Copyright © 2022 Adventist University of Central Africa. All Rights
          Reserved
        </p>
      </div>
    </footer>
    <script src="index.js"></script>
  </body>
</html>
