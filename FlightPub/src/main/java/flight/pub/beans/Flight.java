/* 
 * FlightBean.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c)  2023 Yuquing Inc. All rights reserved.
 * 
 * FlightBean holds data for a single flight within the FlightPub application.
 * It provides essential information related to a specific flight, including
 * title, airline brand, image, departure and arrival times, airports, and cost.
 * The class includes methods for accessing and manipulating flight data,
 * such as retrieving the duration of the flight and formatting the time.
 */

package flight.pub.beans;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import static java.time.temporal.ChronoUnit.MINUTES;


import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.AutoPopulated;
import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.data.annotation.Transient;
import io.micronaut.serde.annotation.Serdeable;
import jakarta.inject.Inject;
import flight.pub.repository.CityRepository;

@Prototype
@Introspected
@Serdeable
@MappedEntity
public class Flight {
    @NonNull
    @Id
    private String flightID;
    private String provider;
    private String destination;
    private String departure;
    private Float cost;
    private String flightNum;
    private LocalDateTime departureTime;
    private LocalDateTime arrivalTime;

    @Inject
    public Flight() {
    }

    public Flight(String flightID, String provider, String destination, String departure,
    LocalDateTime departureTime, LocalDateTime arrivalTime, Float cost, String flightNum) {
        this.flightID = flightID;
        this.provider = provider;
        this.departureTime = departureTime;
        this.departure = departure;
        this.arrivalTime = arrivalTime;
        this.destination = destination;
        this.cost = cost;
        this.flightNum = flightNum;
    }

    public String getFlightID() {
        return flightID;
    }

    public void setFlightID(String title) {
        this.flightID = title;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String airlineBrand) {
        this.provider = airlineBrand;
    }

    public LocalDateTime getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(LocalDateTime departureTime) {
        this.departureTime = departureTime;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    @Transient
    public String getDepartureAirport() {
        // get from city table
        return "";
    }

    @Transient
    public String getArrivalAirport() {
        return "";
    }

    public LocalDateTime getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(LocalDateTime arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String arrival) {
        this.destination = arrival;
    }

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    public void setFlightNum(String flightNum) {
        this.flightNum = flightNum;
    }

    public String getFlightNum() {
        return flightNum;
    }

    // Get the duration of the flight in hours and minutes and as a string
    @Transient
    public String getDuration(){
        long durationMinutes = MINUTES.between(
            getDepartureTime(), 
            getArrivalTime());

        long hours   = durationMinutes / 60;
        long minutes = durationMinutes % 60;
        return "" + hours + " hr " + minutes + " min";
    }

    @Transient
    public String getDepartureTimeFormatted(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm");
        return getDepartureTime().format(formatter);
    }

    @Transient
    public String getArrivalTimeFormatted(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm");
        return getArrivalTime().format(formatter);
    }

    // // Get's the details of a flight by it's ID from the database
    // public static Flight getFlightById(String id){
    //     //TODO: implement
    //     // TEMPORARY
    //     Flight b = new Flight();
    //     b.f1_1();
    //     return b;
    // }

    public String toJson(){
        DateTimeFormatter isoFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

        return "{" +
            "\"title\":\"" + flightID + "\"," +
            "\"airlineBrand\":\"" + provider + "\"," +
            "\"departureTime\":\"" + departureTime.format(isoFormat) + "\"," +
            "\"departure\":\"" + departure + "\"," +
            "\"departureAirport\":\"" + getDepartureAirport() + "\"," +
            "\"arrivalTime\":\"" + arrivalTime.format(isoFormat) + "\"," +
            "\"arrival\":\"" + destination + "\"," +
            "\"arrivalAirport\":\"" + getArrivalAirport() + "\"," +
            "\"cost\":\"" + cost + "\"" +
            "\"flightNum\":\"" + flightNum + "\"" +
        "}";
    }

    @Override
    public String toString(){
        return "FlightBean" + toJson();
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/

    public void temp1() {
        flightID = "JQ218";
        flightNum = "JQ218";
        provider = "Jetstar";
        departure = "SYD";
        // departureAirport = "Kingsford Smith Airport";
        departureTime = LocalDateTime.parse("2024-03-02T17:00:01");
        arrivalTime = LocalDateTime.parse("2024-03-03T18:15:01");
        destination = "BNE";
        // arrivalAirport = "Brisbane Airport";
        cost = 1235.00f;
    }

    public void temp2() {
        flightID = "Flight NPL";
        flightNum = "FlightNPL";
    }

    public void temp3() {
        flightID = "Flight NYC";
        flightNum = "FlightNYC";
    }

    public void temp4() {
        flightID = "Flight XYZ";
        flightNum = "Flight XYZ";
    }

    public void f1_1() {
        flightID = "MU326";
        flightNum = "MU326";
        provider = "China Eastern";
        departureTime = LocalDateTime.parse("2023-06-09T01:00:00");
        arrivalTime = LocalDateTime.parse("2023-06-09T08:15:00");
        departure = "SYD";
        // departureAirport = "Sydney Aiport";
        destination = "PVG";
        // arrivalAirport = "Shanghai Pudong International Airport";
        cost = 456f;
    }

    public void f1_2() {
        flightID = "CZ301";
        flightNum = "CZ301";
        provider = "China Southern";
        departureTime = LocalDateTime.parse("2023-06-10T13:15:00");
        arrivalTime = LocalDateTime.parse("2023-06-11T01:30:00");
        departure = "PVG";
        destination = "CDG";
        // departureAirport = "Shanghai Pudong International Airport";
        // arrivalAirport = "Paris Charles de Gaulle Airport";
        cost = 1063f;
    }

    public void f2_1() {
        flightID = "TR3";
        flightNum = "TR3";
        provider = "Scoot";
        departureTime = LocalDateTime.parse("2023-06-09T02:35:00");
        arrivalTime = LocalDateTime.parse("2023-06-09T10:55:00");
        departure = "SYD";
        // departureAirport = "Sydney Aiport";
        destination = "SIN";
        // arrivalAirport = "Singapore Changi Airport";
        cost = 951f;
    }

    public void f2_2() {
        flightID = "TR712";
        flightNum = "TR712";
        provider = "Scoot";
        departureTime = LocalDateTime.parse("2023-06-09T21:35:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T08:55:00");
        departure = "SIN";
        destination = "ATH";
        // departureAirport = "Singapore Changi Airport";
        // arrivalAirport = "Athens International Airport";
        cost = 823f;
    }

    public void f2_3() {
        flightID = "A3664";
        flightNum = "A3664";
        provider = "Aegean";
        departureTime = LocalDateTime.parse("2023-06-10T13:20:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T15:55:00");
        departure = "ATH";
        destination = "MXP";
        // departureAirport = "Athens International Airport";
        // arrivalAirport = "Malpensa Airport";
        cost = 275f;
    }

    public void f2_4() {
        flightID = "U23813";
        flightNum = "U23813";
        provider = "easyJet";
        departureTime = LocalDateTime.parse("2023-06-10T17:25:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T18:55:00");
        departure = "MXP";
        destination = "CDG";
        // departureAirport = "Malpensa Airport";
        // arrivalAirport = "Paris Charles de Gaulle Airport";
        cost = 257f;
    }

    public void f3_1() {
        flightID = "EY451";
        flightNum = "EY451";
        provider = "Etihad Airways";
        departureTime = LocalDateTime.parse("2023-06-09T05:05:00");
        arrivalTime = LocalDateTime.parse("2023-06-09T19:35:00");
        departure = "SYD";
        destination = "AUH";
        // departureAirport = "Sydney Aiport";
        // arrivalAirport = "Abu Dhabi International Airport";
        cost = 1863f;
    }

    public void f3_2() {
        flightID = "EY31";
        flightNum = "EY31";
        provider = "Etihad Airways";
        departureTime = LocalDateTime.parse("2023-06-09T22:25:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T05:45:00");
        departure = "AUH";
        destination = "CDG";
        // departureAirport = "Abu Dhabi International Airport";
        // arrivalAirport = "Paris Charles de Gaulle Airport";
        cost = 1089f;
    }
}
