/*
 * GroupBookingBean.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * GroupBookingBean represents a group booking within the FlightPub application.
 * A group booking consists of the group's name, members, number of members, booking date
 * and an image. GroupBookingBean is used to manage and display information related to group 
 * bookings, allowing users to create, view, and modify group bookings for flights.
 */

package flight.pub.beans;

import java.util.List;

public class GroupBookingBean {

    private String groupName;
    private List<String> members;
    private int numberOfMembers;
    private String bookingDate;
    private String image;

    public GroupBookingBean() {
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public List<String> getMembers() {
        return members;
    }

    public void setMembers(List<String> members) {
        this.members = members;
    }

    public int getNumberOfMembers() {
        return numberOfMembers;
    }

    public void setNumberOfMembers(int numberOfMembers) {
        this.numberOfMembers = numberOfMembers;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getImage(){
        return image;
    }

    public void setImage(String image){
        this.image = image;
    }

    public void temp1(){
        image = "/images/barcelona.png";
        groupName = "The Cool Group";
    }

    public void temp2(){
        image = "/images/dehli.png";
        groupName = "Group 1";
    }
}
