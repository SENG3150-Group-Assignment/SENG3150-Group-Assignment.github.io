<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Exploration</title>

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
    <div id="exploration-main" class="p-5">
      <form action="advanced_search.html">
        <div class="card bg-dark text-white" style="border-radius: 1rem">
          <div class="card-body py-4 px-5">
            <div class="row">
              <div class="col-md-3">
                <label for="temperature" class="form-label">Temperature</label>
                <select class="form-select" id="temperature">
                  <option value="hot">Hot</option>
                  <option value="temperate">Temperate</option>
                  <option value="cold">Cold</option>
                  <option value="freezing">Freezing</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="terrain" class="form-label">Terrain</label>
                <select class="form-select" id="terrain">
                  <option value="seaside">Seaside</option>
                  <option value="moutainous">Moutainous</option>
                  <option value="hilly">Hilly</option>
                  <option value="flat">Flat</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="weather" class="form-label">Weather</label>
                <select class="form-select" id="weather">
                  <option value="sunny">Sunny</option>
                  <option value="overcast">Overcast</option>
                  <option value="rainy">Rainy</option>
                  <option value="pouring">Pouring</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="attraction" class="form-label">Attractions</label>
                <select class="form-select" id="attraction">
                  <option value="ancient">Ancient</option>
                  <option value="man-made">Man-Made</option>
                  <option value="natural">Natural</option>
                  <option value="phenomenon">Phenomenon</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="row m-3">
          <div class="col-md-2 offset-5 text-center">
            <button
              type="button"
              class="btn btn-outline-dark btn-lg px-5 py-2"
              data-bs-toggle="collapse"
              href="#search-results"
            >
              Search
            </button>
          </div>
        </div>

        <!------------------------- Search Results ------------------------->
        <div id="search-results" class="collapse green-background p-4 rounded">
          <div class="row mt-4">
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
