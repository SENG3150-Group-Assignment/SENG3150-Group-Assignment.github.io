<!-- 
search-component.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This component is used a row in the search results table to display a single search result for
the user's search query. It is used in the advanced-search.ftl template.
-->

<tr onclick='window.location.href = "/flight/";' odd>
    <td>${trip.airlineBrand}</td>
    <td>${trip.departureDate}</td>
    <td class="utc-time">${trip.departureTime}</td>
    <td class="utc-time">${trip.arrivalTime}</td>
    <td>${trip.duration}</td>
    <td>${trip.stops} Stops</td>
    <td class="price">&#36;${trip.cost}</td>
</tr>