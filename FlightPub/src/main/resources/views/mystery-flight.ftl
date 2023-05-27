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
                                    <h5 class="card-title">Mystery Flight</h5>
                                    <hr/>
                                    <p>
                                    Embark on an exhilarating adventure unlike any other with our Mystery Flight experience! Imagine booking a trip filled with anticipation and intrigue, where the destination remains a thrilling secret until the very last moment. This extraordinary journey is designed for the daring and curious souls who seek a unique and unforgettable travel experience. With our Mystery Flight, you'll surrender control and let the excitement unfold as you're whisked away to a surprise location. Whether you're a spontaneous traveler or simply love the element of surprise, this is your chance to embrace the unknown and create lifelong memories. Leave your worries behind, embrace the thrill of the unexpected, and let us take you on a remarkable voyage of discovery with our captivating Mystery Flight.
                                    </P>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Airline</p>
                                            <p class="mb-0">
                                                ???
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Flight Number</p>
                                            <p class="mb-0">
                                                ???
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
                                                ???
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="fw-bold mb-1">Duration</p>
                                            <p class="mb-0">
                                                ???
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                        <#--  TODO break into components  -->
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