<!-- 
booking-wizard.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This file is the template for the booking wizard page. It allows the user to perform the booking
process step-by-step. It is not fully implemented in the current version.
-->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Booking Wizard</title>
  <#include "components/imports.ftl">
    <link rel="stylesheet" type="text/css" href="\styles\booking-wizard.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
  <#include "components/navbar.ftl">
    <!------------------------------ End Navbar ------------------------------>
    <!------------------------------ Main Body ------------------------------>
    <div id="main-body" class="green-background px5">
      <div class="wizard">
        <h1>Booking Wizard</h1>
        <nav class="page-nav">
          <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#" onclick="previousPage()">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#" onclick="changePage(1)">1</a></li>
            <li class="page-item"><a class="page-link" href="#" onclick="changePage(2)">2</a></li>
            <li class="page-item"><a class="page-link" href="#" onclick="changePage(3)">3</a></li>
            <li class="page-item"><a class="page-link" href="#" onclick="changePage(4)">4</a></li>
            <li class="page-item"><a class="page-link" href="#" onclick="nextPage()">Next</a></li>
          </ul>
        </nav>

        <form class="wizard">
          <div id="page1" style="display: block;">
            <div class="mb-3">
              <label for="origin" class="form-label">Origin</label>
              <input type="text" class="form-control" id="origin" aria-describedby="originHelp">
              <div id="originHelp" class="form-text">Where do you want to fly from?</div>
            </div>
          </div>

          <div id="page2" style="display: none;">
            <div class="mb-3">
              <label for="destination" class="form-label">Destination</label>
              <input type="text" class="form-control" id="destination" aria-describedby="destHelp">
              <div id="destHelp" class="form-text">Where do you want to fly to?</div>
            </div>
          </div>

          <div id="page3" style="display: none;">
            <div class ="mb-3">
              <label for="startDate" class="form-label">Start date</label>
            <input
            type="date"
            id="startDate"
            name="startDate"
            class="form-control form-control-lg"
            aria-describedby="startHelp"
            required />
            <div id="destHelp" class="form-text">When do you want to fly?</div>
            </div>
          </div>

          <div id="page4" style="display: none;">
            <div class ="mb-3">
              <label for="endDate" class="form-label">End date</label>
            <input
            type="date"
            id="endDate"
            name="endDate"
            class="form-control form-control-lg"
            aria-describedby="endHelp"
            required />
            <div id="endHelp" class="form-text">When do you want to return?</div>
            </div>
            <button
            class="btn btn-outline-dark btn-lg px-5"
            type="submit">
            Search
          </button>
          </div>
        </form>

        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Home</li>
          </ol>
        </nav>
        
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Library</li>
          </ol>
        </nav>
        
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Library</a></li>
            <li class="breadcrumb-item active" aria-current="page">Data</li>
          </ol>
        </nav>
      </div>
    </div>
    <script src="/js/booking_wizard.js"></script>
</body>

</html>