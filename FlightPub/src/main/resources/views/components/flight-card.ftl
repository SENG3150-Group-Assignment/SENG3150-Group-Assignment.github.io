<!-- 
flight-card.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This component generates a card showing the title and image for a flight. It is used primarily
in the user page to show the watchlist, previous flights and upcoming flights.
-->

<div
    class="card bg-light text-dark p-2"
    style="border-radius: 1rem">
    <div class="card-body text-center p-3">
        <div class="row">
            <img
                src="/images/nepal.jpg"
                class="rounded p-0 img-fluid" />
        </div>
        <div class="row text-center">
            <a href="/flight/booking" class="p-0 m-0">
                ${flight.flightNum}
            </a>
        </div>
    </div>
</div>