/*
 * SearchBean.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * SearchBean represents the search criteria for flight bookings within the FlightPub application.
 * It stores information such as the location, destination, start date, end date and an optional
 * trip type, flight class, maximum number of stops, and passenger count. SearchBean is used to
 * manage and perform flight searches, allowing users to specify their travel preferences and 
 * find suitable flights.
 */

package flight.pub.beans;

import java.time.LocalDate;
import java.util.ArrayList;

import io.micronaut.core.annotation.Introspected;
import jakarta.inject.Singleton;

@Singleton
@Introspected
public class SearchBean {
    // @JsonProperty("location")
    private String location;
    // @JsonProperty("destination")
    private String destination;
    // @JsonProperty("startDate")
    private LocalDate startDate;
    // @JsonProperty("endDate")
    private LocalDate endDate;
    // @JsonProperty("tripType")
    private String tripType;
    // @JsonProperty("flightClass")
    private String flightClass;
    // @JsonProperty("maxStops")
    private int maxStops;
    // @JsonProperty("passengerCount")
    private int passengerCount;

    public SearchBean() {
        location = "";
        destination = "";
        startDate = LocalDate.now();
        endDate = LocalDate.now();
        tripType = "";
        flightClass = "";
        maxStops = 99;
        passengerCount = 1;
    }

    public String getLocation() {

        return location;
    }

    public void setLocation(String location) {

        this.location = location;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public String getTripType() {
        return tripType;
    }

    public void setTripType(String tripType) {

        this.tripType = tripType;
    }

    public String getFlightClass() {
        return flightClass;
    }

    public void setFlightClass(String flightClass) {
        this.flightClass = flightClass;
    }

    public int getMaxStops() {
        return maxStops;
    }

    public void setMaxStops(int maxStops) {
        this.maxStops = maxStops;
    }

    public int getPassengerCount() {
        return passengerCount;
    }

    public void setPassengerCount(int passengerCount) {
        this.passengerCount = passengerCount;
    }

    // Search for flights based on the search data
    public ArrayList<FlightBean> searchFlights(){
        // TODO: implement
        // See sequence diagram in design document for implementation details
        return new ArrayList<FlightBean>();
    }

}