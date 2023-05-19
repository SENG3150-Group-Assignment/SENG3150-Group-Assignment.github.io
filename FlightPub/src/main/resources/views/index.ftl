<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="FlightPub\src\main\resources\static\styles\styles.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&family=Ubuntu&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid px-3">
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
            <a class="nav-link" href="notifications.html">
              <img
                class="rounded-circle pt-auto pb-auto"
                src="Images/notification-symbol.png"
                width="30"
                height="30"
                alt=""
              />
            </a>
          </li>
          <li class="nav-item ps-2">
            <div class="dropdown">
              <a
                class="nav-link dropdown-toggle"
                id="dropdownMenuLink"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                <img
                  class="rounded-circle pt-auto pb-auto"
                  src="Images/blank-user.png"
                  width="30"
                  height="30"
                  alt=""
                />
              </a>
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
    <div class="green-background px-5" id="main-body">
      <div class="pt-5">
        <h1 class="text-center">FlightPub</h1>
      </div>
      <section class="mx-5 pt-5" id="search">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="card bg-light text-white w-75 p-3">
            <div class="card-body p-2 text-center">
              <form action="/home/search" method="post">
                <div class="row">
                  <div class="form-outline col-md-3 form-white pe-2">
                    <input
                      type="text"
                      id="location"
                      name="location"
                      class="form-control form-control-lg"
                      placeholder="From"
                    />
                  </div>
                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="text"
                      id="destination"
                      name="destination"
                      class="form-control form-control-lg"
                      placeholder="To"
                    />
                  </div>
                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="date"
                      id="startDate"
                      name="startDate"
                      class="form-control form-control-lg"
                      placeholder="Start Date"
                    />
                  </div>
                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="date"
                      id="endDate"
                      name="endDate"
                      class="form-control form-control-lg"
                      placeholder="End Date"
                    />
                  </div>
                </div>
                <div class="row px-2 pt-4">
                  <div class="col-md-12 text-center">
                    <a
                      class="btn btn-outline-dark btn-lg px-5"
                      href="/home/wizard"
                      >Wizard</a
                    >

                    <button
                      class="btn btn-outline-dark btn-lg px-5"
                      type="submit"
                    >
                      Search
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
      <section id="explore">
        <div class="container my-5 text-center">
          <div class="row">
            <div class="col-md-2 offset-md-5">Don't know where to go?</div>
          </div>
          <div class="row">
            <div class="col-md-2 offset-md-5">
              <a class="btn btn-outline-dark btn-lg px-5" href="/home/explore"
                >Explore</a
              >
            </div>
          </div>
        </div>
      </section>
      <section class="mx-5 py-5 gradient-search rounded" id="for-you">
        <h2 class="fw-bold text-center">For You</h2>
        <div class="container">
          <div class="row my-5">
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="images/nepal.jpg"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Nepal</h4>
                    Mountainous &middot Spiritual
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="Images/new-york.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>New York City</h4>
                    Cosmopolitan &middot Diverse
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="mystery_package.html">
                    <img
                      src="Images/question-mark.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Mystery Flight</h4>
                    Excitement &middot Adventure
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="Images/barcelona.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Barcelona</h4>
                    Bearches &middot Architecture
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="Images/kygrgyzstan.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Kygrgyzstan</h4>
                    Continental &middot Mountainous
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="Images/paris.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Paris</h4>
                    Romantic &middot Historic
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Sydney</h4>
                    Beaches &middot Iconic
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="destination" href="destination.html">
                    <img
                      src="Images/dehli.png"
                      class="rounded img-fluid"
                      alt=""
                    />
                    <h4>Dehli</h4>
                    Vibrant &middot Hot and Dry
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>