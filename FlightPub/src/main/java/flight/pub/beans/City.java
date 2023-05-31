/*
 * Country.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * DestinationBean holds data for a specific city within the flightpub application
 */


package flight.pub.beans;
import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.serde.annotation.Serdeable;

@Prototype
@Introspected
@Serdeable
@MappedEntity
public class City {
    @NonNull
    @Id
    private String cityCode;
    private String name;
    private String timeZone;
    private String imageID;
    private String countryCode;
    private String temperatureTag;
    private String description;

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String name) {
        this.cityCode = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String description) {
        this.name = description;
    }

    public String getTimeZone() {
        return timeZone;
    }

    public void setTimeZone(String description) {
        this.timeZone = description;
    }

    public String getImageID() {
        return imageID;
    }

    public void setImageID(String description) {
        this.imageID = description;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String description) {
        this.countryCode = description;
    }

    public String getTemperatureTag() {
        return temperatureTag;
    }

    public void setTemperatureTag(String description) {
        this.temperatureTag = description;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "City{" +
                ", cityCode='" + cityCode + '\'' +
                ", name='" + name + '\'' +
                ", timeZone='" + timeZone + '\'' +
                ", imageID='" + imageID + '\'' +
                ", countryCode='" + countryCode + '\'' +
                ", temperatureTag='" + temperatureTag + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
