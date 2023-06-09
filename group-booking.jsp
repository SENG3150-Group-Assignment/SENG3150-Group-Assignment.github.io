<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Group Booking</title>

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
    <div id="group-booking-main" class="gradient-search">
      <div class="card bg-dark text-light m-4">
        <div class="card-body">
          <div class="row">
            <div class="col-md-2">
              <div class="card bg-light text-dark">
                <div class="card-body bg-danger text-center">Cancel Trip</div>
              </div>
            </div>
            <div class="col-md-8 text-center"><h3>John's Group</h3></div>
            <div class="col-md-2">
              <div class="card bg-light text-dark">
                <div class="card-body bg-success text-center">1-Click</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row p-4">
        <div class="col-md-8">
          <div class="card bg-dark text-light">
            <div class="card-body">
              <div class="row my-4">
                <div class="col-md-4">
                  <div class="card bg-light text-dark p-3">
                    <strong>Member 1:</strong> John Smith
                  </div>
                </div>
                <div class="col-md-2 offset-md-4 text-center">
                  <div class="btn btn-warning p-3 w-75">Remove</div>
                </div>
                <div class="col-md-2 text-center">
                  <div class="btn btn-danger p-3 w-75">Not Booked</div>
                </div>
              </div>

              <div class="row my-4">
                <div class="col-md-4">
                  <div class="card bg-light text-dark p-3">
                    <strong>Member 2:</strong> Liam Smith
                  </div>
                </div>
                <div class="col-md-2 offset-md-4 text-center">
                  <div class="btn btn-warning p-3 w-75">Remove</div>
                </div>
                <div class="col-md-2 text-center">
                  <div class="btn btn-success p-3 w-75">Booked</div>
                </div>
              </div>
              <div class="row my-4">
                <div class="col-md-4">
                  <div class="card bg-light text-dark p-3">
                    <strong>Member 3:</strong> Milan Harding
                  </div>
                </div>
                <div class="col-md-2 offset-md-4 text-center">
                  <div class="btn btn-warning p-3 w-75">Remove</div>
                </div>
                <div class="col-md-2 text-center">
                  <div class="btn btn-danger p-3 w-75">Not Booked</div>
                </div>
              </div>

              <div class="row my-4">
                <div class="col-md-4">
                  <div class="card bg-light text-dark p-3">
                    <strong>Member 4:</strong> Liam Shaw
                  </div>
                </div>
                <div class="col-md-2 offset-md-4 text-center">
                  <div class="btn btn-warning p-3 w-75">Remove</div>
                </div>
                <div class="col-md-2 text-center">
                  <div class="btn btn-danger p-3 w-75">Not Booked</div>
                </div>
              </div>
              <div class="row my-4">
                <div class="col-md-4">
                  <div class="card bg-light text-dark p-3">
                    <strong>Member 5:</strong> Leena Marshall
                  </div>
                </div>
                <div class="col-md-2 offset-md-4 text-center">
                  <div class="btn btn-warning p-3 w-75">Remove</div>
                </div>
                <div class="col-md-2 text-center">
                  <div class="btn btn-danger p-3 w-75">Not Booked</div>
                </div>
              </div>

              <div class="row my-4">
                <div class="col-md-4">
                  <div class="card bg-light text-dark p-3">
                    <strong>Member 6:</strong> Lester Graham
                  </div>
                </div>
                <div class="col-md-2 offset-md-4 text-center">
                  <div class="btn btn-warning p-3 w-75">Remove</div>
                </div>
                <div class="col-md-2 text-center">
                  <div class="btn btn-success p-3 w-75">Booked</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="row">
            <div class="card bg-dark text-light">
              <div class="card-body text-center">
                Remaining Seats: <strong>3</strong>
              </div>
            </div>
          </div>
          <div class="row mt-4">
            <div class="card bg-dark text-light">
              <div class="card-body text-center">
                <h4>Flight Details:</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
