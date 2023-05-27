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
            <label for="floatingInput">Destination</label>
          </div>
        </div>
        <!-- Step 2 -->
        <div id="step2" class="step">
          <!-- Step 2 form fields -->
        </div>
        <!-- Step 3 -->
        <div id="step3" class="step">
          <!-- Step 3 form fields -->
        </div>
        <!-- Step buttons -->
        <div class="step-buttons">
          <button id="prevBtn" class="btn btn-primary" type="button">Previous</button>
          <button id="nextBtn" class="btn btn-primary" type="button">Next</button>
          <button id="submitBtn" class="btn btn-success" type="submit">Submit</button>
        </div>
      </form>
    </div>

    <script src="js/booking_wizard.js"></script>
</body>

</html>