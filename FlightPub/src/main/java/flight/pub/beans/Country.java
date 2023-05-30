/*
 * Country.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * DestinationBean holds data for a specific country within the flightpub application
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
public class Country {
    @NonNull
    @Id
    private String countryCode;
    private String countryName;

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String name) {
        this.countryCode = name;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String description) {
        this.countryName = description;
    }
    @Override
    public String toString() {
        return "Country{" +
                ", countryCode='" + countryCode + '\'' +
                ", description='" + countryName + '\'' +
                '}';
    }
}
