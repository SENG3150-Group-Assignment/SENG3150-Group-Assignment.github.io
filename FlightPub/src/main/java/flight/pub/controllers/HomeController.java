/*
 * HomeController.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * HomeController handles home-related operations in the FlightPub application.
 * It provides endpoints for the home page, search form submission, booking wizard, and
 * exploration. The controller interacts with destination and search bean classes to retrieve 
 * and display data.
 */

package flight.pub.controllers;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.HttpResponse;
import io.micronaut.views.View;
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

import flight.pub.beans.DestinationBean;

@Controller("/home")
public class HomeController {

    // Handle the search form submission
    @Get("/display")
    @View("display")
    public HttpResponse<?> processSearch() throws TemplateNotFoundException, 
    MalformedTemplateNameException, ParseException, IOException, TemplateException {
        String debug = "hello";

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("index.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("debug", debug);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    // Display the home page
    @Get("/")
    @View("index")
    public HttpResponse<?> index() throws TemplateNotFoundException, 
            MalformedTemplateNameException, ParseException, IOException, TemplateException {

        // Dummy data
        DestinationBean nepal = new DestinationBean();
        DestinationBean ny = new DestinationBean();
        DestinationBean mystery = new DestinationBean();
        DestinationBean mystery2 = new DestinationBean();
        ny.ny();
        mystery.mystery();
        mystery2.mystery();
        nepal.nepal();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("index.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("locations", Arrays.asList(ny, mystery, nepal, mystery2));
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    // Display the booking wizard page
    @Get("/wizard")
    @View("booking-wizard")
    public HttpResponse<?> displayWizard() {
        return HttpResponse.ok();
    }

    // Display the explore page
    @Get("/explore")
    @View("exploration")
    public HttpResponse<?> displayExplore() {
        return HttpResponse.ok();
    }
    @Get("/destination")
    @View("destination")
    public HttpResponse<?> destination() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {

        DestinationBean nepal = new DestinationBean();
        nepal.nepal();


        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("destination.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("destination", nepal);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
     
    }
    
}
