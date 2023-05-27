package flight.pub.controllers;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
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

import flight.pub.beans.FlightBean;
import flight.pub.beans.GroupBookingBean;
import flight.pub.beans.PassengerBean;
import flight.pub.beans.SearchBean;

@Controller("/flight")
public class FlightController {

    // Handle the search form submission DEBUGGING ONLY
    @Post(value = "/blank", consumes = MediaType.APPLICATION_FORM_URLENCODED) // TODO get form to return json
    @View("display")
    public HttpResponse<?> processSearch(@Body SearchBean searchData) {
        return HttpResponse.ok().body(searchData);
    }

    // If get is used
    @Get("/")
    @View("flight")
    public HttpResponse<?> flightGet() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
            IOException, TemplateException {
        
        return flightPost();
    }

    // Display the home page
    @Post("/")
    @View("flight")
    public HttpResponse<?> flightPost() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
            IOException, TemplateException {

        // Dummy data
        FlightBean temp1 = new FlightBean();
        FlightBean temp2 = new FlightBean();
        FlightBean temp3 = new FlightBean();
        FlightBean temp4 = new FlightBean();
        temp1.f2_1();
        temp2.f2_2();
        temp3.f2_3();
        temp4.f2_4();

        GroupBookingBean groupTemp1 = new GroupBookingBean();
        GroupBookingBean groupTemp2 = new GroupBookingBean();
        GroupBookingBean groupTemp3 = new GroupBookingBean();
        GroupBookingBean groupTemp4 = new GroupBookingBean();
        groupTemp1.temp1();
        groupTemp2.temp2();
        groupTemp3.temp1();
        groupTemp4.temp2();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(FlightController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("user.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        System.out.println(temp1.getDepartureTime());
        map.put("flights", Arrays.asList(temp1, temp2, temp3, temp4));
        map.put("groups", Arrays.asList(groupTemp1, groupTemp2, groupTemp3, groupTemp4));
        map.put("flight", temp1);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    // Display the booking details page
    @Get("/booking")
    @View("booking")
    public HttpResponse<?> displayBooking() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
        FlightBean temp1 = new FlightBean();
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
}
