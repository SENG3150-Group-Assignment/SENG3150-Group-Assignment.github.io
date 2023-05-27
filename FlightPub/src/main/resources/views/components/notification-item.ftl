<!-- 
notification-item.ftl
FlightPub Application
Copyright (c)  2023 Yuquing Inc. All rights reserved.

This component represents a single notification item to be displayed on the notification page,
showing a title, description and time.
-->

<div class="card border-0 shadow-sm">
    <div class="card-body">
        <h5 class="card-title">${notification.title}</h5>
        <p class="card-text">
            ${notification.description}
        </p>
        <p class="card-text">
            <small class="text-muted">${notification.timeFormatted}</small>
        </p>
    </div>
</div>