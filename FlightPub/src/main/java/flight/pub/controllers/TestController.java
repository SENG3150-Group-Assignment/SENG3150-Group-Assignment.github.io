/*
 * 
 */

package flight.pub.controllers;

import java.io.IOException;
import java.util.List;
import javax.validation.Valid;

import io.micronaut.data.model.Pageable;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.HttpResponse;
import io.micronaut.views.View;
import jakarta.inject.Inject;
import io.micronaut.scheduling.TaskExecutors;
import io.micronaut.scheduling.annotation.ExecuteOn;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;


import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

import flight.pub.beans.Country;
import flight.pub.beans.City;
import flight.pub.repository.CountryRepository;
import flight.pub.repository.CityRepository;


@ExecuteOn(TaskExecutors.IO)
@Controller("/test")
public class TestController {
    protected final CountryRepository countryRepository;
    protected final CityRepository cityRepository;
    
    @Inject
    public TestController(CountryRepository countryRepository, CityRepository cityRepository) {
        this.countryRepository = countryRepository;
        this.cityRepository = cityRepository; 
    }

    @Get("/display")
    @View("display")
    public HttpResponse<?> destination() {
        // check if the country repo exits
        if (countryRepository == null) {
            System.out.println("countryRepository is null");
        } else {
            System.out.println("countryRepository is not null");
        }
        return HttpResponse.ok();
    }

    @Get("/list") 
    @View("display")
    public HttpResponse<?> list(@Valid Pageable pageable) throws TemplateNotFoundException, 
    MalformedTemplateNameException, ParseException, IOException, TemplateException { 
        List<Country> p = countryRepository.findAll(pageable).getContent();
        List<City> q = cityRepository.findAll(pageable).getContent();
        // System.out.println("There are " + p.size() + " countries in the database");
        // if (p.size() > 0) {
        //     System.out.println("The first country is " + p.get(0).getCountryName());
        // } else {
        //     System.out.println("There are no countries in the database");
        // }

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("display.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("debug", q);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }
}
 