<!-- 
destination.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This file is the template for the destination page of the website. It shows a destination
and a description for that destination and allows the user to search for fligths to it.
-->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Destination</title>
    <#include "components/imports.ftl" />
</head>

<body>
    <#include "components/navbar.ftl">
        <div class="green-background px-5" id="main-body">
            <div class="container py-5">
                <div class="row row-cols-1 row-cols-md-2 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="${destination.image}" class="card-img-top" alt="Nepal">
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="card-title">
                                    ${destination.name}
                                </h1>
                                <#list destination.description as singular>
                                    <p class="card-text">
                                        ${singular}
                                    </p>
                                </#list>
                                <p class="card-text">
                                    Nestled in the heart of the Himalayas, Nepal is a country of natural and cultural wonders that are sure to leave you awe-struck. Home to the world's highest mountain, Mount Everest, Nepal offers breathtaking views of the majestic peaks that surround it.
                                </p>
                                <button onclick="window.location.href='/navbar/user#watchlist';" type="button" class="btn btn-primary me-3">Add to Watchlist</button>
                                <a class="btn btn-success" href="/search">Search Flights</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>

</html>