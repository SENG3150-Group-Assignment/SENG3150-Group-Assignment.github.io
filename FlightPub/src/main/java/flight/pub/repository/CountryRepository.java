/*
 * CountryRepository.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * Handles CRUD operations for the Country entity.
 */

package flight.pub.repository;

import flight.pub.beans.Country;

import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.exceptions.DataAccessException;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.model.query.builder.sql.Dialect;
import io.micronaut.data.repository.PageableRepository;

import javax.transaction.Transactional;
import javax.validation.constraints.NotBlank;

@JdbcRepository(dialect = Dialect.SQL_SERVER)
public interface CountryRepository extends PageableRepository<Country, String> {

    @Transactional
    Country save(@NonNull @NotBlank String countryName);

    @Transactional
    default Country saveWithException(@NonNull @NotBlank String countryName) {
        save(countryName);
        throw new DataAccessException("test exception");
    }

    long update(@NonNull @NotBlank @Id String countryCode, @NonNull @NotBlank String countryName);
}