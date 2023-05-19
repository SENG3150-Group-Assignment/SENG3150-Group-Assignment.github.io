<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Notifications</title>
    <link rel="stylesheet" href="css/styles.css" />

    <!-- Boostrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />

    <!-- Bootstrap JS -->
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>

    <!-- Bootstrap Icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&family=Ubuntu&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!------------------------------ Navbar ------------------------------>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid px-3">
        <!-- Brand Img -->
        <a class="navbar-brand" href="index.html">
          <img
            class="rounded-circle pt-auto pb-auto"
            src="Images/FlightPub-Logo.png"
            width="30"
            height="30"
            alt=""
          />
        </a>

        <ul class="navbar-nav d-flex flex-row ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="notifications.html"
              ><img
                class="rounded-circle pt-auto pb-auto"
                src="Images/notification-symbol.png"
                width="30"
                height="30"
                alt=""
            /></a>
          </li>
          <li class="nav-item ps-2">
            <div class="dropdown">
              <a
                class="nav-link dropdown-toggle"
                id="dropdownMenuLink"
                data-bs-toggle="dropdown"
                aria-expanded="false"
                ><img
                  class="rounded-circle pt-auto pb-auto"
                  src="Images/blank-user.png"
                  width="30"
                  height="30"
                  alt=""
              /></a>

              <ul
                class="dropdown-menu dropdown-menu-lg-end"
                aria-labelledby="dropdownMenuLink"
              >
                <li><a class="dropdown-item" href="#">My Account</a></li>
                <li><a class="dropdown-item" href="#">Watchlist</a></li>
                <li>
                  <a class="dropdown-item" href="#">Accessibility</a>
                </li>
                <li>
                  <a class="dropdown-item" href="login.html">Log Out</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!------------------------------ End Navbar ------------------------------>

    <!------------------------------ Main Body ------------------------------>
    <div class="green-background px-5" id="main-body">
      <div class="container py-4">
        <h1>Your Notifications</h1>
        <hr />

        <!-- Notification Cards -->
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <div class="col">
            <div class="card border-0 shadow-sm">
              <div class="card-body">
                <h5 class="card-title">Flight ABC reminder</h5>
                <p class="card-text">
                  Your flight ABC to Kathmandu is scheduled for tomorrow at
                  10:00 AM. Please arrive at the airport at least 2 hours before
                  the departure time.
                </p>
                <p class="card-text">
                  <small class="text-muted">4 hours ago</small>
                </p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card border-0 shadow-sm">
              <div class="card-body">
                <h5 class="card-title">Flight XYZ delayed</h5>
                <p class="card-text">
                  Flight XYZ to Paris has been delayed by 2 hours due to bad
                  weather conditions. Please check the updated schedule for more
                  information.
                </p>
                <p class="card-text">
                  <small class="text-muted">1 day ago</small>
                </p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card border-0 shadow-sm">
              <div class="card-body">
                <h5 class="card-title">Flight LMN cancellation</h5>
                <p class="card-text">
                  Flight LMN to Berlin has been cancelled for security. Please
                  contact our customer support for further assistance.
                </p>
                <p class="card-text">
                  <small class="text-muted">4 days ago</small>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>