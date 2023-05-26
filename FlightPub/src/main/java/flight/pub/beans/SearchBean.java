package flight.pub.beans;

import java.time.LocalDate;


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

    public SearchBean() {

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
}