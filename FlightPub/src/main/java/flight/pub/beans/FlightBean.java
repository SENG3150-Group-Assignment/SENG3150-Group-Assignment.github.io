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

@Prototype
@Introspected
public class FlightBean {
    private String title;
    private String airlineBrand;
    private String image;
    private LocalDateTime departureTime;
    private String departure;
    private String departureAirport;
    private LocalDateTime arrivalTime;
    private String arrival;
    private String arrivalAirport;
    private Float cost;

    public FlightBean() {

    }

    public FlightBean(String title, String airlineBrand, String image, LocalDateTime departureTime,
            String departure, String departureAirport, LocalDateTime arrivalTime, String arrival,
            String arrivalAirport, Float cost) {
        this.title = title;
        this.airlineBrand = airlineBrand;
        this.image = image;
        this.departureTime = departureTime;
        this.departure = departure;
        this.departureAirport = departureAirport;
        this.arrivalTime = arrivalTime;
        this.arrival = arrival;
        this.arrivalAirport = arrivalAirport;
        this.cost = cost;
        // TODO move repeat variables to array
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAirlineBrand() {
        return airlineBrand;
    }

    public void setAirlineBrand(String airlineBrand) {
        this.airlineBrand = airlineBrand;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    // public String getDepartureDate() {
    //     return departureDate;
    // }

    // public void setDepartureDate(String departureDate) {
    //     this.departureDate = departureDate;
    // }

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

    public String getDepartureAirport() {
        return departureAirport;
    }

    public void setLeavingAirport(String leavingAirport) {
        this.departureAirport = leavingAirport;
    }

    // public String getArrivalDate() {
    //     return arrivalDate;
    // }

    // public void setArrivalDate(String arrivalDate) {
    //     this.arrivalDate = arrivalDate;
    // }

    public LocalDateTime getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(LocalDateTime arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public String getArrival() {
        return arrival;
    }

    public void setArrival(String arrival) {
        this.arrival = arrival;
    }

    public String getArrivalAirport() {
        return arrivalAirport;
    }

    public void setArrivalAirport(String arrivalAirport) {
        this.arrivalAirport = arrivalAirport;
    }

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    // Get the duration of the flight in hours and minutes and as a string
    public String getDuration(){
        long durationMinutes = MINUTES.between(
            getDepartureTime(), 
            getArrivalTime());

        long hours   = durationMinutes / 60;
        long minutes = durationMinutes % 60;
        return "" + hours + " hr " + minutes + " min";
    }

    public String getDepartureTimeFormatted(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm");
        return getDepartureTime().format(formatter);
    }

    public String getArrivalTimeFormatted(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm");
        return getArrivalTime().format(formatter);
    }

    // Get's the details of a flight by it's ID from the database
    public static FlightBean getFlightById(String id){
        //TODO: implement
        // TEMPORARY
        FlightBean b = new FlightBean();
        b.f1_1();
        return b;
    }

    public String toJson(){
        DateTimeFormatter isoFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

        return "{" +
            "\"title\":\"" + title + "\"," +
            "\"airlineBrand\":\"" + airlineBrand + "\"," +
            "\"image\":\"" + image + "\"," +
            "\"departureTime\":\"" + departureTime.format(isoFormat) + "\"," +
            "\"departure\":\"" + departure + "\"," +
            "\"departureAirport\":\"" + departureAirport + "\"," +
            "\"arrivalTime\":\"" + arrivalTime.format(isoFormat) + "\"," +
            "\"arrival\":\"" + arrival + "\"," +
            "\"arrivalAirport\":\"" + arrivalAirport + "\"," +
            "\"cost\":\"" + cost + "\"" +
        "}";
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/

    public void temp1() {
        title = "JQ218";
        airlineBrand = "Jetstar";
        image = "/images/img-placeholder.png";
        departure = "SYD";
        departureAirport = "Kingsford Smith Airport";
        departureTime = LocalDateTime.parse("2024-03-02T17:00:01");
        arrivalTime = LocalDateTime.parse("2024-03-03T18:15:01");
        arrival = "BNE";
        arrivalAirport = "Brisbane Airport";
        cost = 1235.00f;
    }

    public void temp2() {
        title = "Flight NPL";
        image = "/images/nepal.jpg";
    }

    public void temp3() {
        title = "Flight NYC";
        image = "/images/new-york.png";
    }

    public void temp4() {
        title = "Flight XYZ";
        image = "/images/img-placeholder.png";
    }

    public void f1_1() {
        title = "MU326";
        airlineBrand = "China Eastern";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-09T01:00:00");
        arrivalTime = LocalDateTime.parse("2023-06-09T08:15:00");
        departure = "SYD";
        departureAirport = "Sydney Aiport";
        arrival = "PVG";
        arrivalAirport = "Shanghai Pudong International Airport";
        cost = 1356f;
    }

    public void f1_2() {
        title = "CZ301";
        airlineBrand = "China Southern";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-10T13:15:00");
        arrivalTime = LocalDateTime.parse("2023-06-11T01:30:00");
        departure = "PVG";
        arrival = "CDG";
        departureAirport = "Shanghai Pudong International Airport";
        arrivalAirport = "Paris Charles de Gaulle Airport";
        cost = 1063f;
    }

    public void f2_1() {
        title = "TR3";
        airlineBrand = "Scoot";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-09T02:35:00");
        arrivalTime = LocalDateTime.parse("2023-06-09T10:55:00");
        departure = "SYD";
        departureAirport = "Sydney Aiport";
        arrival = "SIN";
        arrivalAirport = "Singapore Changi Airport";
        cost = 951f;
    }

    public void f2_2() {
        title = "TR712";
        airlineBrand = "Scoot";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-09T21:35:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T08:55:00");
        departure = "SIN";
        arrival = "ATH";
        departureAirport = "Singapore Changi Airport";
        arrivalAirport = "Athens International Airport";
        cost = 823f;
    }

    public void f2_3() {
        title = "A3664";
        airlineBrand = "Aegean";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-10T13:20:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T15:55:00");
        departure = "ATH";
        arrival = "MXP";
        departureAirport = "Athens International Airport";
        arrivalAirport = "Malpensa Airport";
        cost = 275f;
    }

    public void f2_4() {
        title = "U23813";
        airlineBrand = "easyJet";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-10T17:25:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T18:55:00");
        departure = "MXP";
        arrival = "CDG";
        departureAirport = "Malpensa Airport";
        arrivalAirport = "Paris Charles de Gaulle Airport";
        cost = 257f;
    }

    public void f3_1() {
        title = "EY451";
        airlineBrand = "Etihad Airways";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-09T05:05:00");
        arrivalTime = LocalDateTime.parse("2023-06-09T19:35:00");
        departure = "SYD";
        arrival = "AUH";
        departureAirport = "Sydney Aiport";
        arrivalAirport = "Abu Dhabi International Airport";
        cost = 1863f;
    }

    public void f3_2() {
        title = "EY31";
        airlineBrand = "Etihad Airways";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-09T22:25:00");
        arrivalTime = LocalDateTime.parse("2023-06-10T05:45:00");
        departure = "AUH";
        arrival = "CDG";
        departureAirport = "Abu Dhabi International Airport";
        arrivalAirport = "Paris Charles de Gaulle Airport";
        cost = 1089f;
    }
}
