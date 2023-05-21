<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Home</title>
  <#include "components/imports.ftl">
</head>

<body>
  <#-- Navbar -->
    <#include "components/navbar.ftl">
      <#-- Main page -->
        <div class="green-background px-5" id="main-body">
          <div class="pt-5">
            <h1 class="text-center">FlightPub</h1>
          </div>
          <section class="mx-5 pt-5" id="search">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <#-- Search -->
                <#include "components/search-component.ftl">
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
                        <#include "components/destination-card.ftl">
                      </div>
                    </#list>
                  </div>
                  <div class="row my-5">
                    <#list locations as location>
                      <div class="col-md-3">
                        <#include "components/destination-card.ftl">
                      </div>
                    </#list>
                  </div>
              </section>
        </div>
</body>

</html>