
<tr onclick='window.location.href = "/flight/";' odd>
    <td>${trip.airlineBrand}</td>
    <td>${trip.departureDate}</td>
    <td class="utc-time">${trip.departureTime}</td>
    <td class="utc-time">${trip.arrivalTime}</td>
    <td>${trip.duration}</td>
    <td>${trip.stops} Stops</td>
    <td class="price">&#36;${trip.cost}</td>
</tr>