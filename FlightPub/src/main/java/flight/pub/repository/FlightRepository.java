/*
 * FlightRepository.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * Handles CRUD operations for the Flight entity.
 */

package flight.pub.repository;

import flight.pub.beans.Flight;

import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.exceptions.DataAccessException;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.model.query.builder.sql.Dialect;
import io.micronaut.data.repository.PageableRepository;
import java.time.LocalDateTime;

import javax.transaction.Transactional;
import javax.validation.constraints.NotBlank;

@JdbcRepository(dialect = Dialect.SQL_SERVER)
public interface FlightRepository extends PageableRepository<Flight, String> {

    @Transactional
    Flight save(@NonNull @NotBlank String provider,
    @NonNull @NotBlank String destination, @NonNull @NotBlank String departure,
    @NonNull @NotBlank LocalDateTime departureTime, @NonNull @NotBlank LocalDateTime arrivalTime,
    @NonNull @NotBlank Float cost, @NonNull @NotBlank String flightNum);

    @Transactional
    default Flight saveWithException(@NonNull @NotBlank String provider,
    @NonNull @NotBlank String destination, @NonNull @NotBlank String departure,
    @NonNull @NotBlank LocalDateTime departureTime, @NonNull @NotBlank LocalDateTime arrivalTime,
    @NonNull @NotBlank Float cost, @NonNull @NotBlank String flightNum) {
        save(provider, destination, departure, departureTime, arrivalTime, cost, flightNum);
        throw new DataAccessException("Error saving city");
    }

    long update(@NonNull @NotBlank @Id String flightID, @NonNull @NotBlank String provider,
    @NonNull @NotBlank String destination, @NonNull @NotBlank String departure,
    @NonNull @NotBlank LocalDateTime departureTime, @NonNull @NotBlank LocalDateTime arrivalTime,
    @NonNull @NotBlank Float cost, @NonNull @NotBlank String flightNum);

    Flight findByFlightID(@NonNull @NotBlank @Id String flightID);
}