<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Notifications</title>
  <#include "components/imports.ftl">
</head>

<body>
  <#include "navbar.ftl">
    <div class="green-background px-5" id="main-body">
      <div class="container py-4">
        <h1>Your Notifications</h1>
        <hr />
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <div class="col">
            <div class="card border-0 shadow-sm">
              <div class="card-body">
                <h5 class="card-title">Flight ABC reminder</h5>
                <p class="card-text">
                  Your flight ABC to Kathmandu is scheduled for tomorrow at
                  10:00 AM. Please arrive at the airport at least 2 hours before
                  the departure time.
                </p>
                <p class="card-text">
                  <small class="text-muted">4 hours ago</small>
                </p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card border-0 shadow-sm">
              <div class="card-body">
                <h5 class="card-title">Flight XYZ delayed</h5>
                <p class="card-text">
                  Flight XYZ to Paris has been delayed by 2 hours due to bad
                  weather conditions. Please check the updated schedule for more
                  information.
                </p>
                <p class="card-text">
                  <small class="text-muted">1 day ago</small>
                </p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card border-0 shadow-sm">
              <div class="card-body">
                <h5 class="card-title">Flight LMN cancellation</h5>
                <p class="card-text">
                  Flight LMN to Berlin has been cancelled for security. Please
                  contact our customer support for further assistance.
                </p>
                <p class="card-text">
                  <small class="text-muted">4 days ago</small>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>

</html>