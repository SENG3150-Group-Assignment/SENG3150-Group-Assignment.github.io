/*
 * advanced_search.js
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * This script is responsible for rendering flight search results on the webpage.
 * It utilizes DataTables to create an interactive and searchable table.
 * Converts table data from UTC to local time.
 * The flight data is initially provided by the server and processed using the processTripData()
 * function. The format() function generates the HTML code for each row in the table, displaying
 * flight information. The findEarliestStart() and findLatestEnd() functions are used to determine
 * the earliest start time and latest end time among all the flights which is used to calculate
 * the total duration of the trip.
*/

$(document).ready(function () {
    // Make the table a datatable
    var table = $('#resultsTable').DataTable();
    $('.dataTables_length').addClass('bs-select');

    // Convert tds with class "utc-time" to local time
    $('.utc-time').each(function () {
        var utcTime = $(this).text();
        var localTime = moment.utc(utcTime).local().format('HH:mm');
        // Add the local time zone name
        localTime += ' ' + moment().format('z');
        $(this).text(localTime);
    });

    // Exapmle data, will be replaced with data from the server
    var data = processTripData(searchResults.trips);

    // loop over every row in the table
    table.rows().every(function () {
        var row = this;
        row.child(
            format(data[row.index()], 100)
        ).show();
    });

    $('[data-toggle="tooltip"]').tooltip()
});

// function to make the table row code
function format(data, totalDuration) {
    var ret = ''
    for (var i = 0; i < data.length; i++) {
        var leg = data[i];
        var width = leg.duration / totalDuration * 100;
        var type = "flightBar1"
        if (leg.state == "Landed") {
            type = "flightBar0"
            leg.state = ""
            leg.description = ""
        } else if (leg.state == "Layover") {
            type = "flightBar2"
        }

        ret += ('<span class=" text-truncate ' + type + '" style="width:' + width + '%;"'
        + 'data-toggle="tooltip" data-placement="top" title="' + leg.state + ' ' + leg.description
         + '">'+ leg.state + ' ' + leg.description +'</span>')
    }
    return ret;
}

// function to make format the data stuff
function processTripData(trips){
    // Get the earliest start time and latest end time
    var earliest = findEarliestStart(trips);
    var latest = findLatestEnd(trips);
    var totalDuration = latest - earliest;

    var data = [];

    for(var trip of trips){
        lastArrival = earliest;
        var newTrip = [];

        for(var leg of trip){
            // Read dates
            var departure = Date.parse(leg.departureTime);
            var arrival = Date.parse(leg.arrivalTime);
            var duration = (arrival - departure);

            // Add layover
            newTrip.push({
                    description: leg.departure,
                    state: lastArrival==earliest ? "Landed" : "Layover",
                    duration: (departure - lastArrival) / totalDuration * 100,
            });

            // Add flight
            newTrip.push({
                flightNumber: leg.title,
                description: leg.departure + "-" + leg.arrival,
                state: "Flying",
                duration: duration / totalDuration * 100,
            })
            lastArrival = arrival;
        }
        data.push(newTrip);
    }
    return data;
}

function findEarliestStart(trips){
    var earliest = Date.parse(trips[0][0].departureTime);
    for(var trip of trips){
        var departure = Date.parse(trip[0].departureTime)
        if(departure < earliest){
            earliest = departure;
        }
    }
    return earliest;
}

function findLatestEnd(trips){
    var latest = Date.parse(trips[0][trips[0].length - 1].arrivalTime);
    for(var trip of trips){
        var arrival = Date.parse(trip[trip.length - 1].arrivalTime)
        if(arrival > latest){
            latest = arrival;
        }
    }
    return latest;
}

// Function called when the user selects a flight
document.getElementById("flight").onclick = function () {
    // Go to the flight page
    window.location.href = "/flight/";
}