<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Booking</title>
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
    <section id="main-body" class="p-5">
      <div class="pb-5" id="booking-heading">
        <h1 class="text-center text-dark">Booking Details</h1>
      </div>
      <div class="card bg-dark text-white" style="border-radius: 1rem">
        <div class="card-body p-3 px-5">
          <div class="row">
            <div class="col-md-3">
              <div class="row p-1 px-2"><h3 class="p-0">Jetstar</h3></div>
              <div class="row p-1 px-2">Flight JQ218</div>
            </div>
            <div class="col-md-3">
              <div class="row p-1 px-2"><h3 class="p-0">Sydney (SYD)</h3></div>
              <div class="row p-1 px-2">Kingsford Smith Airport</div>
              <div class="row p-1 px-2">2 March 2024</div>
              <div class="row p-1 px-2">7:00pm AEDT</div>
            </div>
            <div class="col-md-3">
              <i class="bi bi-chevron-double-right right-icon"></i>
            </div>
            <div class="col-md-3">
              <div class="row p-1 px-2">
                <h3 class="p-0">Brisbane (BNE)</h3>
              </div>
              <div class="row p-1 px-2">Brisbane Airport</div>
              <div class="row p-1 px-2">2 March 2024</div>
              <div class="row p-1 px-2">8:15pm AEDT</div>
            </div>
          </div>
        </div>
      </div>

      <div class="card bg-dark text-white mt-5" style="border-radius: 1rem">
        <div class="card-body p-3 px-5">
          <h3 class="p-2 pb-3">Passengers</h3>
          <div class="row py-3">
            <div class="card bg-light text-dark" style="border-radius: 1rem">
              <div class="card-body p-4">
                <div class="row">
                  <h5><strong>Passenger 1</strong></h5>
                </div>
                <div class="row">
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Name:</strong> John Smith
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Date of Birth:</strong> 01/01/1995
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Gender:</strong> Male
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Passport Number:</strong> PA123412
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row py-3">
            <div class="card bg-light text-dark" style="border-radius: 1rem">
              <div class="card-body p-4">
                <div class="row">
                  <h5><strong>Passenger 2</strong></h5>
                </div>
                <div class="row">
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Name:</strong> John Smith
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Date of Birth:</strong> 01/01/1995
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Gender:</strong> Male
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="card bg-dark text-light">
                      <div class="card-body p-3 px-5 text-center">
                        <strong>Passport Number:</strong> PA123412
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
  </body>
</html>
