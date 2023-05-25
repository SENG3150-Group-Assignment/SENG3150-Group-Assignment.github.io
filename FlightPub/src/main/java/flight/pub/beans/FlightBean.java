package flight.pub.beans;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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
        title = "CZ326";
        airlineBrand = "China Southern";
        image = "/images/img-placeholder.png";
        departure = "SYD";
        departureAirport = "Sydney Aiport";
        departureTime = LocalDateTime.parse("2023-06-09T01:25:01");
        arrivalTime = LocalDateTime.parse("2023-06-10T10:10:01");
        arrival = "CAN";
        arrivalAirport = "Guangzhou Baiyun International Airport";
        cost = 945f;
    }

    public void f1_2() {
        title = "CZ301";
        airlineBrand = "China Southern";
        image = "/images/img-placeholder.png";
        departureTime = LocalDateTime.parse("2023-06-11T12:30:01");
        arrivalTime = LocalDateTime.parse("2023-06-11T17:05:01");
        departure = "CAN";
        departureAirport = "Tribhuvan International Airport";
        arrival = "KTM";
        cost = 632f;
    }
}
