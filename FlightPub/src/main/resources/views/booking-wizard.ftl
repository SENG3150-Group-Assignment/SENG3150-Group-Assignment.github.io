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
</head>

<body>
  <#include "components/navbar.ftl">
    <!------------------------------ End Navbar ------------------------------>
    <!------------------------------ Main Body ------------------------------>
    <div class="form-container">
      <form id="multiStepForm" class="form">
        <!-- Step 1 -->
        <div id="step1" class="step">
          Where are you flying from?
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInput" placeholder="">
            <label for="floatingInput">Origin</label>
          </div>
        </div>
        <!-- Step 2 -->
        <div id="step2" class="step">
          Where are you flying to?
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInput" placeholder="">
            <label for="floatingInput">Destination</label>
          </div>
        </div>
        <!-- Step 3 -->
        <div id="step3" class="step">
          What date are you flying?
          <div class="form-outline col-md-3 form-white px-2">
            <input type="date" id="start-date" name="startDate" class="form-control form-control-lg"
              placeholder="Start Date" />
          </div>
        </div>
        <div id="step4" class="step">
          What date are you returning?
          <div class="form-outline col-md-3 form-white px-2">
            <input type="date" id="End Date" name="endDate" class="form-control form-control-lg"
              placeholder="End Date" />
          </div>
        </div>
        <div class="step-buttons">
          <button id="prevBtn" class="btn btn-primary" type="button">Previous</button>
          <button id="nextBtn" class="btn btn-primary" type="button">Next</button>
          <button id="submitBtn" class="btn btn-success" type="submit">Submit</button>
        </div>
      </form>
    </div>
    <!-- Step buttons -->
    <script src="js/booking_wizard.js"></script>
</body>

</html>