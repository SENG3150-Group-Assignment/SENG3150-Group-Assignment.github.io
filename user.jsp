<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>User</title>
    
    <!-- Boostrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
      />
    
    <!-- Our CSS -->
    <link rel="stylesheet" href="css/styles.css" />
    
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
                <li>
                  <a class="dropdown-item" href="user.html">My Account</a>
                </li>
                <li>
                  <a class="dropdown-item" href="watchlist.html">Watchlist</a>
                </li>
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
    <div class="green-background" id="main-body">
      <section id="main">
        <div class="row pe-4">
          <div class="col-md-4 bg-dark p-4 rounded-bottom">
            <div class="pb-3">
              <h1 class="text-center text-light">User Details</h1>
            </div>
            <div class="row">
              <div class="col-md-6 text-light">First Name:</div>
              <div class="col-md-6 text-light">Last Name:</div>
            </div>
            <div class="row">
              <div class="text-light">Email Address:</div>
            </div>
            <div class="row">
              <div class="col-md-6 text-light">Phone:</div>
            </div>
          </div>
          <!------------------------- Right Half of Page ------------------------->
          <div class="col-md-8 p-4">
            <div class="row mt-3">
              <h4>Upcoming Flights</h4>
              <div class="card bg-dark text-white" style="border-radius: 1rem">
                <div class="card-body p-3 text-center">
                  <div class="row">
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <h4>Previous Flights</h4>
              <div class="card bg-dark text-white" style="border-radius: 1rem">
                <div class="card-body p-3 text-center">
                  <div class="row">
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <h4>Group Bookings</h4>
              <div class="card bg-dark text-white" style="border-radius: 1rem">
                <div class="card-body p-3 text-center">
                  <div class="row">
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bg-light text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <h4>Watchlist</h4>
              <div class="card bg-dark text-white" style="border-radius: 1rem">
                <div class="card-body p-3 text-center">
                  <div class="row">
                    <div class="col-md-3">
                      <div
                        class="card text-dark good-price p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img src="Images/beach-background_temp.jpg" class="rounded p-0 img-fluid" />
                          </div>
                          <div class="row text-center">
                            <a href="advanced_search.html" class="p-0 m-0" style="font-size: 1.2rem; color: #333; text-decoration: none; font-weight: bold;">Cairns</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card average-price text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/nepal_temp.jpg"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="advanced_search.html" class="p-0 m-0" style="font-size: 1.2rem; color: #333; text-decoration: none; font-weight: bold;">Nepal</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card bad-price text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/opera-house.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="advanced_search.html" class="p-0 m-0" style="font-size: 1.2rem; color: #333; text-decoration: none; font-weight: bold;">Sydney</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div
                        class="card average-price text-dark p-2"
                        style="border-radius: 1rem"
                      >
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/beach-city.png"
                              class="rounded p-0 img-fluid"
                            />
                          </div>
                          <div class="row text-center">
                            <a href="advanced_search.html" class="p-0 m-0" style="font-size: 1.2rem; color: #333; text-decoration: none; font-weight: bold;">Spain</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>