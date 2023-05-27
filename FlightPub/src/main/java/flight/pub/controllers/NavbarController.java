/*
 * NavbarController.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * NavbarController handles operations related to the navigation bar in the FlightPub application.
 * It provides endpoints for the different navigation links such as the homepage, notifications,
 * user account, and login/signup pages.
 */

package flight.pub.controllers;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;


import io.micronaut.http.HttpResponse;

import io.micronaut.views.View;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import flight.pub.beans.*;
import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

@Controller("/navbar")
public class NavbarController {

    @Get("/")
    @View("index")
    public HttpResponse<?> index() {
        return HttpResponse.ok();
    }

    @Get("/notifications")
    @View("notifications")
    public HttpResponse<?> notifications()
            throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException,
            TemplateException {
        // Dummy Data
        NotificationBean notif1 = new NotificationBean();
        NotificationBean notif2 = new NotificationBean();
        NotificationBean notif3 = new NotificationBean();
        notif1.temp1();
        notif2.temp2();
        notif3.temp3();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(NavbarController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("notifications.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("notifications", Arrays.asList(notif1, notif2, notif3));
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    @Get("/user")
    @View("user")
    public HttpResponse<?> account()
            throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
        // Dummy data
        FlightBean temp1 = new FlightBean();
        FlightBean temp2 = new FlightBean();
        FlightBean temp3 = new FlightBean();
        FlightBean temp4 = new FlightBean();
        temp1.temp1();
        temp2.temp2();
        temp3.temp3();
        temp4.temp4();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("user.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flights", Arrays.asList(temp1, temp2, temp3, temp4));
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    @Get("/logout")
    @View("login")
    public HttpResponse<?> logout() {
        return HttpResponse.ok();
    }
}