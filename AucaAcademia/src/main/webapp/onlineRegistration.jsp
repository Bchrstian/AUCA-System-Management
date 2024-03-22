<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Adventist University of Central Africa</title>
    <style>
      .lists ol {
        padding-left: 40px;
      }
    </style>
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
                    <a href="studashboard.jsp" onclick="redirectToDashboard('student')"
                      >Student</a
                    >
                  </li>
                  <li style="margin-right: 20px">
                    <a href="lecture.jsp" onclick="redirectToDashboard('teacher')"
                      >Teacher</a
                    >
                  </li>
                  <li>
                    <a href="adminDashboard.jsp" onclick="redirectToDashboard('admin')">Admin</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
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
            <li><a href="index.jsp" onclick="showContent('home')">Home</a></li>
            <li class="dropdown">
              <a href="about.jsp" onclick="showContent('about')">About</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('background')"
                    >Background</a
                  >
                </li>
                <li>
                  <a href="about.jsp" onclick="about.jsp"
                    >Vision & Mission</a
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
              <a href="admissions.jsp" onclick="showContent('admissions')">Admissions</a>
              <ul class="dropdown-content">
                <li>
                  <a href="admissions.jsp" onclick="admissions.jsp"
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
                  <a href="academic.jsp" onclick="academic.jsp"
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
               <li><a href="mediacenter.jsp" onclick="mediacenter.jsp">Service Charter</a></li>
                <li>
                  <a href="#" onclick="showSubContent('events')">News updates</a>
                </li>
                <li>
                  <a href="#" onclick="showSubContent('gallery')">26th Graduation</a>
                </li>
                <li>
                  <a href="#" onclick="showSubContent('videos')">27th Graduation</a>
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
                  <a href="research.jsp" onclick="research.jsp"
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
         

            <li><a href="#" onclick="showContent('apply')">Apply</a></li>
             <li><a href="login.jsp" onclick="showContent('login')">Login</a></li>
          </ul>
        </nav>
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
      <main
      class="page-content"
      style="padding: 20px; font-family: Arial, sans-serif; line-height: 1.6"
    >

      <div
        id="main"
        style="
          background-color: #f9f9f9;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        "
      >
        <div class="wrapper">
          <div class="column column-wide">
            <div class="content-block" style="font-size: smaller; font-weight: normal;">
              <h1
                class="post-title"
                style="font-size: 24px; font-weight: normal; color: #000000df; font-family: Verdana, Geneva, sans-serif; margin-bottom: 20px"
              >
              Online Registration
              <div
                class="divider"
                style="border-top: 2px solid #000000; font-weight: bold; margin-bottom: 10px"
              ></div>
              <h3
        style="
          font-size: 32px;
          font-family: Arial;
          font-weight: bold;
          color: rgb(5, 59, 121);
          margin-bottom: 20px;
        "
      >
      ACADEMIC YEAR 2023-2024: SEMESTER TWO
      </h3>
      <br>
      <p> We welcome all students to the January intake (Semester two of the academic year 2023/2024) at Adventist University of Central Africa. Classes start on 21st January 2024. The university calendar for the academic year 2023-2024 is accessible <span style="text-decoration: underline; color: rgb(5, 59, 121); font-weight: bolder;"><em>here</em></span></p>
      <br>
      <div class="lists">
      <ol>
        <li><p>All AUCA students are requested <b>to check courses</b> to be studied for the January intake from <b>14th December 2023</b>. Kindly confirm with us if allocated courses are correct and check the tuition fees in order to inform your sponsor or parent.</p></li>
        <br>
        <li><p><b>This is to remind you the registration calendar as follows:</b></p>
          <br>
        <ol>
          <li>From 8th to 12th January 2024: <b>Placement test and Orientation for new students</b></li>
          <li>From 14th to 19th January, 2024: <b>Registration</b></li>
          <li>21st January, 2024: <b>Start of Classes</b></li>
          <li>From 21st to 26th January: <b>Modification.</b></li>
          <li>8th February, 2024: <b>Deadline to submit registration forms.</b></li>
        </ol>
        </li>
        <br>
        <li><p>Student who will not submit registration forms by <b>8th February, 2024 will pay late submission fee.</b></p></li>
        <br>
        <li><p>Payment shall be done via <b>URUBUTO Pay, Dial *775*2#</b> AUCA Code is <b>TH61132546</b> then follow instructions.</p></li>
      </ol>
    </div>
      <br>
      <a href="" style="color: rgb(5, 59, 121)"><b>Click Here to Connect to AUCA Online Registration Software</b></a>
      <br><br>
      <a href="" style="color: rgb(5, 59, 121) "><b>If you are outside of  AUCA  Click here</b></a>
      <br>
      <h3
        style="
          font-size: 32px;
          font-family: Arial;
          font-weight: bold;
          color: rgb(5, 59, 121);
          margin-bottom: 20px;
        "
      >
      <br>
      Registration Process: How to register?
      </h3>
      <br>
      <p><b>Step 1:</b> Login and check your registration</p>
      <br>
      <p><b>Step 2:</b> Print summary (Registration form) in 3 copies</p>
      <br>
      <p><b>Step 3:</b> Pay the tuition fee or contact Business Office for financial facilitation.</p>
      <br>
      <p><b>Step 4:</b> Have registration forms (3) stamped by your faculty</p>
      <br>
      <p><b>Step 5:</b> Submit registration forms 3 copies to finance office</p>
      <br>
      <p><b>Step 6:</b> Read registration guide</p>
      <br>
      <p><b>N.B:</b> For any clarification, please visit the office of the registrar or call on 0724796998.</p>
      <br>
                <div class="cleaner"></div>
              </div>
              <!-- end .post-content -->
            </div>
            <!-- end .content-block -->
          </div>
          <!-- end .column column-wide -->
        </div>
        <!-- end .wrapper -->
      </div>
      <!-- end #main -->
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
