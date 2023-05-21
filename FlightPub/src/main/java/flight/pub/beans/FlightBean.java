package flight.pub.beans;

import java.sql.Date;

import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;

@Prototype
@Introspected
public class FlightBean {
    private String title;
    private String airlineBrand;
    private String image;
    private String departureDate;
    private String departureTime;
    private String departure;
    private String departureAirport;
    private String arrivalDate;
    private String arrivalTime;
    private String arrival;
    private String arrivalAirport;

    public FlightBean() {
    }

    public FlightBean(String title, String airlineBrand, String image, String departureDate, String departureTime,
            String departure,
            String departureAirport, String arrivalDate, String arrivalTime, String arrival, String arrivalAirport) {
        this.title = title;
        this.airlineBrand = airlineBrand;
        this.image = image;
        this.departureDate = departureDate;
        this.departureTime = departureTime;
        this.departure = departure;
        this.departureAirport = departureAirport;
        this.arrivalDate = arrivalDate;
        this.arrivalTime = arrivalTime;
        this.arrival = arrival;
        this.arrivalAirport = arrivalAirport;
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

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public String getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(String departureTime) {
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

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(String arrivalTime) {
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

    public void temp1() {
        title = "Flight JQ218";
        airlineBrand = "Jetstar";
        image = "/images/img-placeholder.png";
        departure = "Sydney (SYD)";
        departureAirport = "Kingsford Smith Airport";
        departureDate = "2 March 2024";
        departureTime = "7:00pm AEDT";
        arrival = "Brisbane (BNE)";
        arrivalAirport = "Brisbane Airport";
        arrivalDate = "2 March 2024";
        arrivalTime = "8:15pm AEDT";

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
}
