/*
 * Application.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c)  2023 Yuquing Inc. All rights reserved.
 * This is the main class that launches the FlightPub application.
 *
 * Created by Thomas Bandy, Martyn Cox, Wilson Zhou and Lachlan Smyth in May 2023
 * Last modified by on 2023-05-28
 * Version: 0.2
 */

package flight.pub;

import io.micronaut.runtime.Micronaut;

public class Application {

    public static void main(String[] args) {
        Micronaut.run(Application.class, args);
    }
}