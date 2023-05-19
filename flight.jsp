<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Flight</title>
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
    <!-- Provider, Departure city, Destination city, flightnumber, departure time, and arrival time, departure date and arrival date-->
    <div class="green-background px-5" id="main-body">
      <div class="container py-4">
        <!-- Back to search results button -->
        <a href="advanced_search.html" class="btn btn-secondary mb-3"
          ><i class="bi bi-arrow-left me-2"></i>Back to search results</a
        >

        <div class="row">
          <!-- Flight info column -->
          <div class="col-lg-8">
            <div class="card mb-4">
              <div class="card-body">
                <h5 class="card-title">Flight Details</h5>
                <hr />
                <div class="row">
                  <div class="col-sm-4">
                    <p class="fw-bold mb-1">Airline</p>
                    <p class="mb-0">XYZ Airlines</p>
                  </div>
                  <div class="col-sm-4">
                    <p class="fw-bold mb-1">Flight Number</p>
                    <p class="mb-0">XY123</p>
                  </div>
                  <div class="col-sm-4">
                    <p class="fw-bold mb-1">Departure Date & Time</p>
                    <p class="mb-0">May 15, 2023 12:30 PM</p>
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-4">
                    <p class="fw-bold mb-1">From</p>
                    <p class="mb-0">Kathmandu (KTM)</p>
                  </div>
                  <div class="col-sm-4">
                    <p class="fw-bold mb-1">To</p>
                    <p class="mb-0">New York City (JFK)</p>
                  </div>
                  <div class="col-sm-4">
                    <p class="fw-bold mb-1">Duration</p>
                    <p class="mb-0">16h 30m</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4">
            <!-- Recursive booking column -->
            <div class="card mb-4">
              <div class="card-body">
                <h5 class="card-title">Book Recursively</h5>
                <hr />
                <form>
                  <div class="mb-3">
                    <label for="booking-frequency" class="form-label"
                      >Booking Frequency</label
                    >
                    <select class="form-select" id="booking-frequency">
                      <option value="none">Don't rebook</option>
                      <option value="fortnightly">Weekly</option>
                      <option value="fortnightly">Fortnightly</option>
                      <option value="monthly">Monthly</option>
                      <option value="monthly">Anually</option>
                    </select>
                  </div>
                  <div class="mb-3">
                    <label for="booking-count" class="form-label"
                      >Booking Count</label
                    >
                    <input
                      type="number"
                      class="form-control"
                      id="booking-count"
                      min="1"
                      max="50"
                      value="1"
                    />
                  </div>
                </form>
              </div>
            </div>

            <!-- Book now & Price column -->
            <div class="card mb-4">
              <div class="card-body">
                <h5 class="card-title">Book Now</h5>
                <hr />
                <p class="fw-bold mb-1">Price</p>
                <p class="h2 mb-4">$800</p>

                <button class="btn btn-success btn-lg mb-3">
                  Add to Watchlist
                </button>

                <button class="btn btn-primary btn-lg mb-3">Book Now</button>
                <a
                  class="btn btn-primary btn-lg mb-3"
                  href="group-booking.html"
                >
                  Book as Group
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>