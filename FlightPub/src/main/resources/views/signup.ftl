<!-- 
signup.ftl
FlightPub Application
Copyright (c) 2023 Yuquing Inc. All rights reserved.

This is the template for the signup page where the user can create a flightpub account.
-->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Sign Up</title>
  <#include "components/imports.ftl">
</head>

<body>
  <section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <!-- Beginning of Card -->
          <div class="card bg-dark text-white" style="border-radius: 1rem">
            <div class="card-body p-5 text-center">
              <div class="mb-md-5 mt-md-4 pb-5">
                <!-- Heading and Subtext -->
                <h2 class="fw-bold mb-2 text-uppercase">Sign Up</h2>
                <p class="text-white-50 mb-5">
                  Please enter your details to sign up!
                </p>
                <!-- First and Last Name -->
                <form action="/auth/create" method="post">
                  <div class="mb-4">
                    <div class="row">
                      <div class="form-outline col-md-6 form-white pe-2">
                        <input
                          type="text"
                          id="first-name"
                          name="firstName"
                          class="form-control form-control-lg"
                          placeholder="First Name" />
                      </div>
                      <div class="form-outline col-md-6 form-white ps-2">
                        <input
                          type="text"
                          id="last-name"
                          name="lastName"
                          class="form-control form-control-lg"
                          placeholder="Last Name" />
                      </div>
                    </div>
                  </div>
                  <!-- Mobile Number -->
                  <div class="form-outline form-white mb-4">
                    <input
                      type="tel"
                      id="mobile-number"
                      name="mobileNumber"
                      class="form-control form-control-lg"
                      placeholder="Mobile Number" />
                  </div>
                  <!-- Email Input -->
                  <div class="form-outline form-white mb-4">
                    <input
                      type="email"
                      id="typeEmailX"
                      name="email"
                      class="form-control form-control-lg"
                      placeholder="Email" />
                  </div>
                  <!-- Password input -->
                  <div class="form-outline form-white mb-4">
                    <input
                      type="password"
                      id="typePasswordX"
                      name="password"
                      class="form-control form-control-lg"
                      placeholder="Password" />
                  </div>
                  <button
                    class="btn btn-outline-light btn-lg px-5 mb-4"
                    type="submit">
                    Sign Up
                  </button>
                </form>
              </div>
              <div>
                <p class="mb-0">
                  Have an account?
                  <a href="/auth" class="text-white-50 fw-bold">Login</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>

</html>