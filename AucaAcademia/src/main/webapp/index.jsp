<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Adventist University of Central Africa</title>
    <link rel="stylesheet" href="style.css" />
     <link rel="shortcut icon" href="images/favicon.png" />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />
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
                  <a href="background.jsp" onclick="showSubContent('background')"
                    >Background</a
                  >
                </li>
                <li>
                  <a href="#" onclick="showSubContent('vision_mission')"
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
                  <a href="undergraduate.jsp" onclick="showSubContent('undergraduate')"
                    >Undergraduate Admission Requirements</a
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
              <a href="academic.jsp" onclick="showContent('academics')">Academics</a>
              <ul class="dropdown-content">
                <li>
                  <a href="#" onclick="showSubContent('AcademicCalender')"
                    >Academic Calender 2023 - 2024</a
                  >
                </li>
                <li>
                  <a href="sundergraduate.jsp" onclick="showSubContent('courses')"
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
              <a href="media.jsp" onclick="showContent('media_center')">Media Center</a>
              <ul class="dropdown-content">
                <li><a href="media.jsp" onclick="showSubContent('news')">News</a></li>
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
              <a href="research.jsp" onclick="showContent('research')">Research</a>
              <ul class="dropdown-content">
                <li>
                  <a href="research.jsp" onclick="showSubContent('AUCA Journal')"
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
        <div class="search-container">
          <input type="search" name="search" placeholder="Search..." />
          <label for="search"
            ><img src="./assets/icons/search.png" alt="search"
          /></label>
        </div>
      </div>
    </header>
    <main class="page-content">
      <section class="home-hero-sec">
        <div class="slide">
          <div class="back-image">
            <img
              src="https://auca.ac.rw/wp-content/uploads/2022/05/Campuses.png"
              alt=""
            />
          </div>
          <div class="front-part">
            <a href="" class="compuses">Campuses</a>
            <p>MAY 10, 2021</p>
            <a href="" class="btn">READ MORE</a>
          </div>
        </div>
      </section>
      <section class="home-programs-sec">
        <div class="card">
          <img
            src="https://auca.ac.rw/wp-content/uploads/2020/04/Business-Services-Online-1-365x240.jpg"
            alt="card image"
          />
          <div class="text">
            <h3>APPLY ONLINE</h3>
            <div class="line"></div>
          </div>
        </div>
        <div class="card">
          <img
            src="https://auca.ac.rw/wp-content/uploads/2020/01/Group-365x240.jpg"
            alt="card image"
          />
          <div class="text">
            <h3>UNDERGRADUATE</h3>
            <div class="line"></div>
          </div>
        </div>
        <div class="card">
          <img
            src="https://auca.ac.rw/wp-content/uploads/2019/09/Slider-campus-photo3-710x300-365x240.jpg"
            alt="card image"
          />
          <div class="text">
            <h3>GRADUATE PROGRAMMES</h3>
            <div class="line"></div>
          </div>
        </div>
      </section>
      <section class="news-section">
        <aside>
          <div class="social">
            <h3>FOLLOW US</h3>
            <div class="line"></div>
            <p>
              Follow us on social media and be the first to find out about our
              news!
            </p>
            <div class="social-icons">
              <img src="./assets/icons/fb.png" alt="facebook" width="20px" />
              <img
                src="./assets/icons/twitter.png"
                alt="twitter"
                width="20px"
              />
              <img src="./assets/icons/ig.png" alt="instagram" width="20px" />
            </div>
          </div>
        </aside>
        <div class="hero">
          <h3>WELCOME TO THE ADVENTIST UNIVERSITY OF CENTRAL AFRICA</h3>
          <div class="line"></div>
          <img
            src="https://auca.ac.rw/wp-content/uploads/2019/09/005-G3.jpg"
            alt="auca -image compus"
          />
        </div>
      </section>
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

    <script>
      function showContent(page) {
        var content = "";
        switch (page) {
          case "home":
            content =
              "<p>Welcome to Adventist University of Central Africa! AUCA is a private Christian university committed to providing quality Adventist education in a nurturing environment. Explore our website to learn more about our programs, faculty, and student life.</p>";
            break;
          case "about":
            content = "<p>About content goes here.</p>";
            break;
          case "admissions":
            content = "<p>Admissions content goes here.</p>";
            break;
          case "academics":
            content = "<p>Academics content goes here.</p>";
            break;
          case "media_center":
            content = "<p>Media Center content goes here.</p>";
            break;
          case "research":
            content = "<p>Research content goes here.</p>";
            break;
          case "auca_alumni":
            content = "<p>AUCA Alumni content goes here.</p>";
            break;
          case "apply":
            content = "<p>Apply content goes here.</p>";
            break;
          default:
            content =
              "<p>Welcome to Adventist University of Central Africa! AUCA is a private Christian university committed to providing quality Adventist education in a nurturing environment. Explore our website to learn more about our programs, faculty, and student life.</p>";
        }
        document.getElementById("content").innerHTML = content;
      }

      function showSubContent(subpage) {
        var subcontent = "";
        switch (subpage) {
          case "background":
            subcontent = "<p>Background content goes here.</p>";
            break;
          case "vision_mission":
            subcontent = "<p>Vision & Mission content goes here.</p>";
            break;
          case "beliefs_values":
            subcontent = "<p>Beliefs and Values content goes here.</p>";
            break;
          case "policies":
            subcontent = "<p>AUCA Policies content goes here.</p>";
            break;
          case "location":
            subcontent = "<p>Location content goes here.</p>";
            break;
          case "undergraduate":
            subcontent = "<p>Undergraduate Admissions content goes here.</p>";
            break;
          case "graduate":
            subcontent = "<p>Graduate Admissions content goes here.</p>";
            break;
          case "international":
            subcontent = "<p>International Admissions content goes here.</p>";
            break;
          case "departments":
            subcontent = "<p>Departments content goes here.</p>";
            break;
          case "courses":
            subcontent = "<p>Courses content goes here.</p>";
            break;
          case "examinations":
            subcontent = "<p>Examinations content goes here.</p>";
            break;
          case "libraries":
            subcontent = "<p>Libraries content goes here.</p>";
            break;
          case "faculty":
            subcontent = "<p>Faculty content goes here.</p>";
            break;
          case "news":
            subcontent = "<p>News content goes here.</p>";
            break;
          case "events":
            subcontent = "<p>Events content goes here.</p>";
            break;
          case "gallery":
            subcontent = "<p>Gallery content goes here.</p>";
            break;
          case "videos":
            subcontent = "<p>Videos content goes here.</p>";
            break;
          case "press_releases":
            subcontent = "<p>Press Releases content goes here.</p>";
            break;
          case "projects":
            subcontent = "<p>Projects content goes here.</p>";
            break;
          case "publications":
            subcontent = "<p>Publications content goes here.</p>";
            break;
          case "research_areas":
            subcontent = "<p>Research Areas content goes here.</p>";
            break;
          case "collaborations":
            subcontent = "<p>Collaborations content goes here.</p>";
            break;
          case "research_ethics":
            subcontent = "<p>Research Ethics content goes here.</p>";
            break;
          case "auca_campuses":
            subcontent = "<p>AUCA Campuses content goes here.</p>";
            break;
          case "auca_videos":
            subcontent = "<p>AUCA Videos content goes here.</p>";
            break;
          case "auca_ngoma_campus":
            subcontent = "<p>AUCA Ngoma Campus content goes here.</p>";
            break;
          default:
            subcontent = "";
        }
        document.getElementById("content").innerHTML = subcontent;
      }
    </script>
  </body>
</html>
