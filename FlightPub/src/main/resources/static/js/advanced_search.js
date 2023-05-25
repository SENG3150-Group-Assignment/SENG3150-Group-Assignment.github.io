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
    console.log(searchResults);

    // Exapmle data, will be replaced with data from the server
    var data = [
        [
            {
                "duration": 12.833,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SYD-DEL"
            },
            {
                "duration": 18.833,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "DEL"
            },
            {
                "duration": 9.083,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "DEL-CDG"
            },
        ],
        [
            {
                "duration": 12.833,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SYD-DEL"
            },
            {
                "duration": 3.75,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "DEL"
            },
            {
                "duration": 4.583,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "DEL-BAH"
            },
            {
                "duration": 1.75,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "BAH"
            },
            {
                "duration": 7.333,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "BAH-CDG"
            },
        ],
        [
            {
                "duration": 2.833,
                "flightNumber": "AA123",
                "state": "Landed",
                "description": "SYD"
            },
            {
                "duration": 8.333,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SYD-SIN"
            },
            {
                "duration": 1.833,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "SIN"
            },
            {
                "duration": 1.166,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SIN-KUL"
            },
            {
                "duration": 3.75,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "KUL"
            },
            {
                "duration": 9,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "KUL-KWI"
            },
            {
                "duration": 2.666,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "KWI"
            },
            {
                "duration": 6.666,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "KWI-DCG"
            },
        ],
        [
            {
                "duration": 12.833,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SYD-DEL"
            },
            {
                "duration": 3.75,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "DEL"
            },
            {
                "duration": 4.583,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "DEL-BAH"
            },
            {
                "duration": 1.75,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "BAH"
            },
            {
                "duration": 7.333,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "BAH-CDG"
            },
        ],
        [
            {
                "duration": 2.833,
                "flightNumber": "AA123",
                "state": "Landed",
                "description": "SYD"
            },
            {
                "duration": 8.333,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SYD-SIN"
            },
            {
                "duration": 1.833,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "SIN"
            },
            {
                "duration": 1.166,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "SIN-KUL"
            },
            {
                "duration": 3.75,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "KUL"
            },
            {
                "duration": 9,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "KUL-KWI"
            },
            {
                "duration": 2.666,
                "flightNumber": "AA123",
                "state": "Layover",
                "description": "KWI"
            },
            {
                "duration": 6.666,
                "flightNumber": "AA123",
                "state": "Flying",
                "description": "KWI-DCG"
            },
        ]
    ]

    // loop over every row in the table
    table.rows().every(function () {
        var row = this;
        row.child(
            format(data[row.index()], 40.75)
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