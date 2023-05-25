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

    // Read results from the server
    console.log(searchResults.trips);

    // Exapmle data, will be replaced with data from the server
    var data = processTripData(searchResults.trips);
    // var data = [
    //     [
    //         {
    //             "duration": 12.833,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SYD-DEL"
    //         },
    //         {
    //             "duration": 18.833,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "DEL"
    //         },
    //         {
    //             "duration": 9.083,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "DEL-CDG"
    //         },
    //     ],
    //     [
    //         {
    //             "duration": 12.833,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SYD-DEL"
    //         },
    //         {
    //             "duration": 3.75,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "DEL"
    //         },
    //         {
    //             "duration": 4.583,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "DEL-BAH"
    //         },
    //         {
    //             "duration": 1.75,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "BAH"
    //         },
    //         {
    //             "duration": 7.333,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "BAH-CDG"
    //         },
    //     ],
    //     [
    //         {
    //             "duration": 2.833,
    //             "flightNumber": "AA123",
    //             "state": "Landed",
    //             "description": "SYD"
    //         },
    //         {
    //             "duration": 8.333,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SYD-SIN"
    //         },
    //         {
    //             "duration": 1.833,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "SIN"
    //         },
    //         {
    //             "duration": 1.166,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SIN-KUL"
    //         },
    //         {
    //             "duration": 3.75,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "KUL"
    //         },
    //         {
    //             "duration": 9,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "KUL-KWI"
    //         },
    //         {
    //             "duration": 2.666,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "KWI"
    //         },
    //         {
    //             "duration": 6.666,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "KWI-DCG"
    //         },
    //     ],
    //     [
    //         {
    //             "duration": 12.833,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SYD-DEL"
    //         },
    //         {
    //             "duration": 3.75,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "DEL"
    //         },
    //         {
    //             "duration": 4.583,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "DEL-BAH"
    //         },
    //         {
    //             "duration": 1.75,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "BAH"
    //         },
    //         {
    //             "duration": 7.333,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "BAH-CDG"
    //         },
    //     ],
    //     [
    //         {
    //             "duration": 2.833,
    //             "flightNumber": "AA123",
    //             "state": "Landed",
    //             "description": "SYD"
    //         },
    //         {
    //             "duration": 8.333,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SYD-SIN"
    //         },
    //         {
    //             "duration": 1.833,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "SIN"
    //         },
    //         {
    //             "duration": 1.166,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "SIN-KUL"
    //         },
    //         {
    //             "duration": 3.75,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "KUL"
    //         },
    //         {
    //             "duration": 9,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "KUL-KWI"
    //         },
    //         {
    //             "duration": 2.666,
    //             "flightNumber": "AA123",
    //             "state": "Layover",
    //             "description": "KWI"
    //         },
    //         {
    //             "duration": 6.666,
    //             "flightNumber": "AA123",
    //             "state": "Flying",
    //             "description": "KWI-DCG"
    //         },
    //     ]
    // ]

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
    console.log("totalDuration: " + totalDuration);

    var data = [];

    for(var trip of trips){
        var newTrip = [
            {
                description: trip.departure,
                state: "Landed",
                duration: (trip.departureTime - earliest) / totalDuration * 100
            }
        ];

        for(var leg of trip){
            var arrival = Date.parse(leg.arrivalTime);
            var departure = Date.parse(leg.departureTime);
            var duration = (arrival - departure);
            console.log("duration: " + duration);
            newTrip.push({
                duration: duration / totalDuration * 100,
                flightNumber: leg.title,
                state: "Flying",
                description: leg.departure + "-" + leg.arrival
            })
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