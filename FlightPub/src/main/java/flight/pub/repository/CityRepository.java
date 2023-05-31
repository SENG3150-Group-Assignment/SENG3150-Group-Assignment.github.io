/*
 * CountryRepository.java
 * FlightPub Application
 * 
 * This file is part of FlightPub, a web-based flight booking application.
 * Copyright (c) 2023 Yuquing Inc. All rights reserved.
 * 
 * Handles CRUD operations for the City entity.
 */

 package flight.pub.repository;

 import flight.pub.beans.City;
 
 import io.micronaut.core.annotation.NonNull;
 import io.micronaut.data.annotation.Id;
 import io.micronaut.data.exceptions.DataAccessException;
 import io.micronaut.data.jdbc.annotation.JdbcRepository;
 import io.micronaut.data.model.query.builder.sql.Dialect;
 import io.micronaut.data.repository.PageableRepository;
 
 import javax.transaction.Transactional;
 import javax.validation.constraints.NotBlank;
 
 @JdbcRepository(dialect = Dialect.SQL_SERVER)
 public interface CityRepository extends PageableRepository<City, String> {
 
     @Transactional
     City save(@NonNull @NotBlank String name, @NonNull @NotBlank String timeZone, String imageID, String countryCode, @NonNull @NotBlank String temperatureTag, String description);
 
     @Transactional
     default City saveWithException(@NonNull @NotBlank String name, @NonNull @NotBlank String timeZone, String imageID, String countryCode, @NonNull @NotBlank String temperatureTag, String description) {
         save(name, timeZone, imageID, countryCode, temperatureTag, description);
         throw new DataAccessException("Error saving city");
     }
 
     long update(@NonNull @NotBlank @Id String cityCode, @NonNull @NotBlank String name, @NonNull @NotBlank String timeZone, String imageID, String countryCode, @NonNull @NotBlank String temperatureTag, String description);

     City findByCityCode(@NonNull @NotBlank @Id String cityCode);

     //City findByName(@NonNull @NotBlank @Id String name);

     //City findByTemperature(@NonNull @NotBlank @Id String temp);
 }