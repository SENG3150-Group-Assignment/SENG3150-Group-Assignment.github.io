<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Home</title>
  <link
    rel="stylesheet"
    type="text/css"
    href="\styles\styles.css" />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous" />
  <script
    defer
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous"></script>
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&family=Ubuntu&display=swap"
    rel="stylesheet" />
</head>

<body>
  <#-- Navbar -->
    <#include "component/navbar.ftl">
      <#-- Main page -->
        <div class="green-background px-5" id="main-body">
          <div class="pt-5">
            <h1 class="text-center">FlightPub</h1>
          </div>
          <section class="mx-5 pt-5" id="search">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <#-- Search -->
                <#include "search-component.ftl">
            </div>
          </section>
          <#-- Explore Button -->
            <section id="explore">
              <div class="container my-5 text-center">
                <div class="row">
                  <div class="col-md-2 offset-md-5">Don't know where to go?</div>
                </div>
                <div class="row">
                  <div class="col-md-2 offset-md-5">
                    <a class="btn btn-outline-dark btn-lg px-5" href="/home/explore">Explore</a>
                  </div>
                </div>
              </div>
            </section>
            <#-- For you Section -->
              <section class="mx-5 py-5 gradient-search rounded" id="for-you">
                <h2 class="fw-bold text-center">For You</h2>
                <div class="container">
                  <div class="row my-5">
                    <#list locations as location>
                      <div class="col-md-3">
                        <#include "component/destination-item.ftl">
                      </div>
                    </#list>
                  </div>
                  <div class="row my-5">
                    <#list locations as location>
                      <div class="col-md-3">
                        <#include "component/destination-item.ftl">
                      </div>
                    </#list>
                  </div>
              </section>
        </div>
</body>

</html>