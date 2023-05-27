<!-- 
navbar.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This component includes the navigation bar used on all pages of the application, containing links
to the user's notifications, account, and logout.
-->


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid px-3">
    <a class="navbar-brand" href="/home">
      <img
        class="rounded-circle pt-auto pb-auto"
        src="\images\flightpub-logo.png"
        width="30"
        height="30"
        alt=""
      />
    </a>
    <ul class="navbar-nav d-flex flex-row ms-auto">
      <li class="nav-item">
        <a class="nav-link" href="/navbar/notifications">
          <img
            class="rounded-circle pt-auto pb-auto"
            src="/images/notification-symbol.png"
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
              src="/images/blank-user.png"
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
              <a class="dropdown-item" href="/navbar/user">My Account</a>
            </li>
            <li>
              <a class="dropdown-item" href="/navbar/logout">Log Out</a>
            </li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</nav>
