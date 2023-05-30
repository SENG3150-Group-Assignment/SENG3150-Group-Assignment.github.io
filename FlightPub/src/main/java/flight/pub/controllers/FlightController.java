/*
 * FlightController.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * FlightController handles flight-related operations in the FlightPub application.
 * It provides endpoints for flight search, flight details, booking, and exploration.
 * The controller interacts with various bean classes to retrieve and display flight information.
 */

package flight.pub.controllers;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.View;
import jakarta.inject.Inject;
import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import flight.pub.beans.Flight;
import flight.pub.beans.GroupBookingBean;
import flight.pub.beans.PassengerBean;
import flight.pub.beans.Search;
import flight.pub.repository.FlightRepository;

@Controller("/flight")
public class FlightController {
    protected final FlightRepository flightRepository;

    @Inject
    public FlightController(FlightRepository flightRepository) {
        this.flightRepository = flightRepository;
    }

    // Handle the search form submission DEBUGGING ONLY
    @Post(value = "/blank", consumes = MediaType.APPLICATION_FORM_URLENCODED) // TODO get form to return json
    @View("display")
    public HttpResponse<?> processSearch(@Body Search searchData) {
        return HttpResponse.ok().body(searchData);
    }

    // For debugging purposes, show a page even when using get
    @Get("/")
    @View("flight")
    public HttpResponse<?> flightGet() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
            IOException, TemplateException {
        
        return flightPost();
    }

    // Display the flight page
    // TODO Make the post take input to display the correct flight
    @Post("/")
    @View("flight")
    public HttpResponse<?> flightPost() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
            IOException, TemplateException {

        // Dummy data
        // Flight temp1 = new Flight();
        // Flight temp2 = new Flight();
        // Flight temp3 = new Flight();
        // Flight temp4 = new Flight();
        // temp1.f2_1();
        // temp2.f2_2();
        // temp3.f2_3();
        // temp4.f2_4();

        // GroupBookingBean groupTemp1 = new GroupBookingBean();
        // GroupBookingBean groupTemp2 = new GroupBookingBean();
        // GroupBookingBean groupTemp3 = new GroupBookingBean();
        // GroupBookingBean groupTemp4 = new GroupBookingBean();
        // groupTemp1.temp1();
        // groupTemp2.temp2();
        // groupTemp3.temp1();
        // groupTemp4.temp2();
        Flight temp = flightRepository.findByFlightID("MU326");

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(FlightController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("flight.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        // map.put("flights", Arrays.asList(temp1, temp2, temp3, temp4));
        // map.put("groups", Arrays.asList(groupTemp1, groupTemp2, groupTemp3, groupTemp4));
        map.put("flight", temp);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    // Display the booking details page
    @Get("/booking")
    @View("booking")
    public HttpResponse<?> displayBooking() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
        Flight temp1 = new Flight();
        temp1.temp1();

        PassengerBean pTemp1 = new PassengerBean();
        PassengerBean pTemp2 = new PassengerBean();
        pTemp1.temp1();
        pTemp2.temp2();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(FlightController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("booking.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flight", temp1);
        map.put("passengers", Arrays.asList(pTemp1, pTemp2));
        
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    // Display the explore page
    @Get("/explore")
    @View("exploration")
    public HttpResponse<?> displayExplore() {
        return HttpResponse.ok();
    }

    // Mystery flight page
    @Get("/mystery")
    @View("mystery-flight")
    public HttpResponse<?> displayMystery() throws TemplateNotFoundException,
        MalformedTemplateNameException, ParseException, IOException, TemplateException {
        Flight temp1 = new Flight();
        temp1.temp1();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(FlightController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("mystery-flight.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        System.out.println(temp1.getDepartureTime());
        map.put("flight", temp1);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }
}
