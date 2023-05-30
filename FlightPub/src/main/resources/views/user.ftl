<!-- 
user.ftl
FlightPub Application
Copyright (c) 2023 Yuquing Inc. All rights reserved.

This is the template for user account page where user can view their account details
upcoming flights, previous flights, group bookings and watchlist. For each of the flights shown to
the user they may search for the flight details.
-->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>User</title>
  <#include "components/imports.ftl">
</head>

<body>
  <#include "components/navbar.ftl">
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
          
          <div class="col-md-8 p-4">
            <section id='upcoming_flights'>
              <div class="row mt-3">
                <h4>Upcoming Flights</h4>
                <div class="card bg-dark text-white" style="border-radius: 1rem">
                  <div class="card-body p-3 text-center">
                    <div class="row">
                      <#list flights as flight>
                        <div class="col-md-3">
                          <#include "components/flight-card.ftl">
                        </div>
                      </#list>
                    </div>
                  </div>
                </div>
              </div>
            <section>
            <section id='previous_flights'>
              <div class="row mt-3">
                <h4>Previous Flights</h4>
                <div class="card bg-dark text-white" style="border-radius: 1rem">
                  <div class="card-body p-3 text-center">
                    <div class="row">
                      <#list flights as flight>
                        <div class="col-md-3">
                          <#include "components/flight-card.ftl">
                        </div>
                      </#list>
                    </div>
                  </div>
                </div>
              </div>
              <section>
            <section id='group_bookings'>
              <div class="row mt-3">
                <h4>Group Bookings</h4>
                <div class="card bg-dark text-white" style="border-radius: 1rem">
                  <div class="card-body p-3 text-center">
                    <div class="row">
                      <#-- TODO debug <#list groups as flight>
                        <div class="col-md-3">
                          <#include "components/flight-card.ftl">
                        </div>
                      </#list>  -->
                      <#-- <div class="col-md-3">
                        <div
                          class="card bg-light text-dark p-2"
                          style="border-radius: 1rem">
                          <div class="card-body text-center p-3">
                            <div class="row">
                              <img
                                src="Images/img-placeholder.png"
                                class="rounded p-0 img-fluid" />
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
                        style="border-radius: 1rem">
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid" />
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
                        style="border-radius: 1rem">
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid" />
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
                        style="border-radius: 1rem">
                        <div class="card-body text-center p-3">
                          <div class="row">
                            <img
                              src="Images/img-placeholder.png"
                              class="rounded p-0 img-fluid" />
                          </div>
                          <div class="row text-center">
                            <a href="booking.html" class="p-0 m-0">Flight Name</a>
                          </div>
                        </div>
                      </div>
                    </div> -->
                    </div>
                  </div>
                </div>
              </div>
            </section>
          <div class="row mt-3">
          <section id='watchlist'>
            <h4>Watchlist</h4>
            <div class="card bg-dark text-white" style="border-radius: 1rem">
              <div class="card-body p-3 text-center">
                <div class="row">
                  <#list flights as flight>
                    <div class="col-md-3">
                      <#include "components/flight-card.ftl">
                    </div>
                  </#list>
                </div>
              </div>
            </div>
          </section>
          </div>
        </div>
    </div>
    </section>
    </div>
</body>

</html>