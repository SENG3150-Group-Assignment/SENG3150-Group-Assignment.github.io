<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Flight</title>
    <#include "components/imports.ftl">
</head>

<body>
    <#-- Navbar -->
        <#include "components/navbar.ftl">
            <div class="green-background px-5" id="main-body">
                <div class="container py-4">
                    <a onclick="history.back()" class="btn btn-secondary mb-3"><i class="bi bi-arrow-left me-2"></i>Back to search results</a>
                    <div class="row">
                        <!-- Flight info column -->
                        <div class="col-lg-8">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Flight Details</h5>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Airline</p>
                                            <p class="mb-0">
                                                ${flight.airlineBrand}
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Flight Number</p>
                                            <p class="mb-0">
                                                ${flight.title}
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Departure Date & Time</p>
                                            <p class="mb-0">
                                                ${flight.departureTimeFormatted}
                                            </p>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">From</p>
                                            <p class="mb-0">
                                                ${flight.departure} (${flight.departureAirport})
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">To</p>
                                            <p class="mb-0">
                                                ${flight.arrival} (${flight.arrivalAirport})
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Duration</p>
                                            <p class="mb-0">
                                                ${flight.duration}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                        <#--  TODO break into components  -->
                            <!-- Recursive booking column --> 
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Book Recursively</h5>
                                    <hr />
                                    <form>
                                        <div class="mb-3">
                                            <label for="booking-frequency" class="form-label">Booking Frequency</label>
                                            <select class="form-select" id="booking-frequency">
                                                <option value="none">Don't rebook</option>
                                                <option value="fortnightly">Weekly</option>
                                                <option value="fortnightly">Fortnightly</option>
                                                <option value="monthly">Monthly</option>
                                                <option value="monthly">Anually</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="booking-count" class="form-label">Booking Count</label>
                                            <input
                                                type="number"
                                                class="form-control"
                                                id="booking-count"
                                                min="1"
                                                max="50"
                                                value="1" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Book now & Price column -->
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Book Now</h5>
                                    <hr />
                                    <p class="fw-bold mb-1">Price</p>
                                    <p class="h2 mb-4">$${flight.cost}</p>
                                    <button class="btn btn-success btn-lg mb-3">
                                        Add to Watchlist
                                    </button>
                                    <button class="btn btn-primary btn-lg mb-3">Book Now</button>
                                    <a
                                        class="btn btn-primary btn-lg mb-3"
                                        href="group-booking.html">
                                        Book as Group
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
</body>