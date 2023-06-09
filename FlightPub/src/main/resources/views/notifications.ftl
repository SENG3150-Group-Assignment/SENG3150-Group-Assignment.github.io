<!-- 
mystery-flight.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This is the template for the notifications page. It displays all the notifications for the user.
Notifications themselves are generated in the notification-item.ftl template.
-->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Notifications</title>
  <#include "components/imports.ftl">
</head>

<body>
  <#include "components/navbar.ftl">
    <div class="green-background px-5" id="main-body">
      <div class="container py-4">
        <h1>Your Notifications</h1>
        <hr />
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <#list notifications as notification>
            <div class="col">
              <#include "components/notification-item.ftl">
            </div>
          </#list>
        </div>
      </div>
    </div>
</body>

</html>