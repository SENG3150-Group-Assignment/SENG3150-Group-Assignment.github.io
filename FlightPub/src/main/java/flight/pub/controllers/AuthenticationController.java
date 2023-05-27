/*
 * AuthenticationController.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * AuthenticationController handles authentication-related operations in the FlightPub application.
 * It provides endpoints for login, signup, and user authentication.
 * The controller interacts with UserBean to perform authentication operations.
 */

package flight.pub.controllers;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.View;

import java.net.URI;

import flight.pub.beans.UserBean;


@Controller("/auth")
public class AuthenticationController {
    UserBean test = new UserBean();

    @Get("/")
    @View("login")
    public HttpResponse<?> loginPage() {
        return HttpResponse.ok();
    }

    @Get("/signup")
    @View("signup")
    public HttpResponse<?> signupPage() {
        return HttpResponse.ok();
    }

    // Handle the search form submission
    @Post(value = "/check", consumes = MediaType.APPLICATION_FORM_URLENCODED)

    public HttpResponse<?> login(@Body UserBean userData) {
        if (authenticateUser(userData, test)) {
            System.out.println("true");
            URI redirectUri = URI.create("/home");
            test.setAuthenticated(true);
            return HttpResponse.seeOther(redirectUri);
        }
        System.out.println("false");
        System.out.println(test.getEmail());
        System.out.println(test.getPassword());
        test.setAuthenticated(false);
        URI redirectUri = URI.create("/auth");
        return HttpResponse.seeOther(redirectUri).body(test);
    }

    @Post(value = "/create", consumes = MediaType.APPLICATION_FORM_URLENCODED)
    @View("login")
    public HttpResponse<?> signup(@Body UserBean userData) {
        test = userData;
        return HttpResponse.ok();
    }

    private boolean authenticateUser(UserBean user1, UserBean user2) {
        if (user1.getEmail().compareTo(user2.getEmail()) == 0
                && user1.getPassword().compareTo(user2.getPassword()) == 0) {
            return true;
        }

        return false;
    }

}
