<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Sign Up</title>

    <!-- Bootstraps -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />

    <!-- Bootstrap JS -->
    <link rel="stylesheet" href="css/styles.css" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
      crossorigin="anonymous"
    ></script>
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
                  <form action="index.html">
                    <div class="mb-4">
                      <div class="row">
                        <div class="form-outline col-md-6 form-white pe-2">
                          <input
                            type="text"
                            id="first-name"
                            class="form-control form-control-lg"
                            placeholder="First Name"
                          />
                        </div>

                        <div class="form-outline col-md-6 form-white ps-2">
                          <input
                            type="text"
                            id="last-name"
                            class="form-control form-control-lg"
                            placeholder="Last Name"
                          />
                        </div>
                      </div>
                    </div>

                    <!-- Mobile Number -->
                    <div class="form-outline form-white mb-4">
                      <input
                        type="tel"
                        id="mobile-number"
                        class="form-control form-control-lg"
                        placeholder="Mobile Number"
                      />
                    </div>

                    <!-- Email Input -->
                    <div class="form-outline form-white mb-4">
                      <input
                        type="email"
                        id="typeEmailX"
                        class="form-control form-control-lg"
                        placeholder="Email"
                      />
                    </div>

                    <!-- Password input -->
                    <div class="form-outline form-white mb-4">
                      <input
                        type="password"
                        id="typePasswordX"
                        class="form-control form-control-lg"
                        placeholder="Password"
                      />
                    </div>

                    <button
                      class="btn btn-outline-light btn-lg px-5 mb-4"
                      type="submit"
                    >
                      Sign Up
                    </button>
                  </form>
                </div>

                <div>
                  <p class="mb-0">
                    Have an account?
                    <a href="login.html" class="text-white-50 fw-bold">Login</a>
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
