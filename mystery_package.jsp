<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Mystery Package</title>

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
    <div class="pt-5">
      <h1 class="text-center">Mystery Flights</h1>
    </div>

    <section id="mystery-main">
      <div class="px-5 py-4">
        <form action="destination.html">
          <div class="row">
            <div class="col-md-6">
              <div class="card bg-dark text-light">
                <div class="card-body">
                  <div class="row m-4">
                    <div class="card bg-light text-dark">
                      <div class="card-body">
                        <div class="form-outline form-white pe-2">
                          <div class="row">
                            <div class="col-3">Area:</div>
                            <div class="col-9">
                              <input
                                type="text"
                                id="location"
                                class="form-control form-control-lg"
                                placeholder="Australia"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row m-4">
                    <div class="card bg-light text-dark">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-3">Number of People:</div>
                          <div class="col-9">
                            <input
                              type="number"
                              id="location"
                              class="form-control form-control-lg"
                              placeholder="2"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row m-4">
                    <div class="card bg-light text-dark">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-3">Number of Nights:</div>
                          <div class="col-9">
                            <input
                              type="number"
                              id="location"
                              class="form-control form-control-lg"
                              placeholder="5"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row m-4">
                    <div class="card bg-light text-dark">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-3">Price:</div>
                          <div class="col-9">
                            <input
                              type="number"
                              id="location"
                              class="form-control form-control-lg"
                              placeholder="$2000"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row"></div>
              <div class="row">
                <button class="btn btn-outline-dark btn-lg px-5" type="submit">
                  Take me somewhere new!
                </button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </section>
  </body>
</html>
