/*
 * DestinationBean.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * DestinationBean holds data for a destination within the FlightPub application.
 * It represents a specific location or event for which a user can search for flights.
 */

package flight.pub.beans;

import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;

@Prototype
@Introspected
public class DestinationBean {
    private String name;
    private String description;
    private String image;

    public DestinationBean() {
    }

    public DestinationBean(String name, String description, String image) {
        this.name = name;
        this.description = description;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/
    public void nepal() {
        setImage("/images/nepal.jpg");
        setName("Nepal");
        setDescription("Mountainous & Spiritual");
    }

    public void ny() {
        setImage("/images/new-york.png");
        setName("New York City");
        setDescription("Cosmopolitan & Diverse");
    }

    public void mystery() {
        setImage("/images/question-mark.png");
        setName("Mystery Flight");
        setDescription("Excitement & Adventure");
    }
}
