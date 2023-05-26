<tr onclick="window.location='flight.html'" class="dt-hasChild" odd>
    <td>${res.airlineBrand}</td>
    <td>${res.departureDate}</td>
    <td class="utc-time">${res.departureTime}</td>
    <td class="utc-time">${res.arrivalTime}</td>
    <td>${res.duration}</td>
    <td>${res.stops} Stops</td>
    <td class="price">&#36;${res.cost}</td>
</tr>