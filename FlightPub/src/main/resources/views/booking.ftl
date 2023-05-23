<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Booking</title>
    <#include "components/imports.ftl">
</head>

<body>
    <!------------------------------ Navbar ------------------------------>
    <#include "components/navbar.ftl">
        <!------------------------------ End Navbar ------------------------------>
        <!------------------------------ Main Body ------------------------------>
        <section id="main-body" class="p-5">
            <div class="pb-5" id="booking-heading">
                <h1 class="text-center text-dark">Booking Details</h1>
            </div>
            <div class="card bg-dark text-white" style="border-radius: 1rem">
                <div class="card-body p-3 px-5">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="row p-1 px-2">
                                <h3 class="p-0">
                                    ${flight.airlineBrand}
                                </h3>
                            </div>
                            <div class="row p-1 px-2">
                                Flight: ${flight.title}
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="row p-1 px-2">
                                <h3 class="p-0">
                                    ${flight.departure}
                                </h3>
                            </div>
                            <div class="row p-1 px-2">
                                ${flight.departureAirport}
                            </div>
                            <div class="row p-1 px-2">
                                ${flight.departureDate}
                            </div>
                            <div class="row p-1 px-2">
                                ${flight.departureTime}
                            </div>
                        </div>
                        <div class="col-md-3">
                            <i class="bi bi-chevron-double-right right-icon"></i>
                        </div>
                        <div class="col-md-3">
                            <div class="row p-1 px-2">
                                <h3 class="p-0">
                                    ${flight.arrival}
                                </h3>
                            </div>
                            <div class="row p-1 px-2">
                                ${flight.arrivalAirport}
                            </div>
                            <div class="row p-1 px-2">
                                ${flight.arrivalDate}
                            </div>
                            <div class="row p-1 px-2">
                                ${flight.arrivalTime}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card bg-dark text-white mt-5" style="border-radius: 1rem">
                <div class="card-body p-3 px-5">
                    <h3 class="p-2 pb-3">Passengers</h3>
                    <#list passengers as passenger>
                        <div class="row py-3">
                            <#include "components/passenger-card.ftl">
                        </div>
                    </#list>
                </div>
            </div>
        </section>
</body>

</html>