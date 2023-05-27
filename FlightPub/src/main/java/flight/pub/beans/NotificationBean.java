/*
 * NotificationBean.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * NotificationBean represents a notification within the FlightPub application.
 * It stores information about the notification's title, description, and time.
 * NotificationBean is used to manage and display notifications related to flights,
 * informing users about important updates, reminders, delays, cancellations, etc.
 */

package flight.pub.beans;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;

@Prototype
@Introspected
public class NotificationBean {
    private String title;
    private String description;
    private LocalDateTime time;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public void setTime(LocalDateTime time) {
        this.time = time;
    }

    public String getTimeFormatted() {
        return time.format(DateTimeFormatter.ofPattern("dd MMM yyyy, HH:mm"));
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/

    public void temp1() {
        title = "Flight ABC reminder";
        description = "Your flight ABC to Kathmandu is scheduled for tomorrow at 10:00 AM. Please arrive at the airport at least 2 hours before the departure time.";
        time = LocalDateTime.of(2023, 5, 25, 10, 0);
    }

    public void temp2() {
        title = "Flight XYZ delayed";
        description = "Flight XYZ to Paris has been delayed by 2 hours due to bad weather conditions. Please check the updated schedule for more information.";
        time = LocalDateTime.of(2023, 5, 26, 13, 30);
    }

    public void temp3() {
        title = "Flight LMN cancellation";
        description = "Flight LMN to Berlin has been cancelled for security. Please contact our customer support for further assistance.";
        time = LocalDateTime.of(2023, 5, 26, 23, 02);
    }

}
