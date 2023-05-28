package flight.pub.controllers;

import flight.pub.beans.Country;

import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.exceptions.DataAccessException;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.model.query.builder.sql.Dialect;
import io.micronaut.data.repository.PageableRepository;

import java.time.LocalDateTime;

import javax.transaction.Transactional;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@JdbcRepository(dialect = Dialect.SQL_SERVER) 
public interface CountryRepositoryTest extends PageableRepository<Country, Long> { 

    @Transactional
    Country save(@NonNull @NotBlank String countryCode, @NonNull @NotBlank String countryName);

    @Transactional
    default Country saveWithException(@NonNull @NotBlank String countryCode, @NonNull @NotBlank String countryName) {
        save(countryCode, countryName);
        throw new DataAccessException("test exception");
    }

    long update(@NonNull @NotNull @Id Long id, @NonNull @NotBlank String countryCode, @NonNull @NotBlank String countryName);
}