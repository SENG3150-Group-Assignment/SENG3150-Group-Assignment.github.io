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

import flight.pub.beans.DestinationBean;
import flight.pub.beans.FlightBean;
import flight.pub.beans.GroupBookingBean;
import flight.pub.beans.SearchBean;

@Controller("/flight")
public class FlightController {

    // Handle the search form submission
    @Post(value = "/blank", consumes = MediaType.APPLICATION_FORM_URLENCODED) // TODO get form to return json
    @View("display")
    public HttpResponse<?> processSearch(@Body SearchBean searchData) {
        return HttpResponse.ok().body(searchData);
    }

    // Display the home page
    @Post("/")
    @View("flight")
    public HttpResponse<?> index() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
            IOException, TemplateException {

        // Dummy data
        FlightBean temp1 = new FlightBean();
        FlightBean temp2 = new FlightBean();
        FlightBean temp3 = new FlightBean();
        FlightBean temp4 = new FlightBean();
        temp1.temp1();
        temp2.temp2();
        temp3.temp3();
        temp4.temp4();

        GroupBookingBean groupTemp1 =new GroupBookingBean();
        GroupBookingBean groupTemp2 =new GroupBookingBean();
        GroupBookingBean groupTemp3 =new GroupBookingBean();
        GroupBookingBean groupTemp4 =new GroupBookingBean();
        groupTemp1.temp1();
        groupTemp2.temp2();
        groupTemp3.temp1();
        groupTemp4.temp2();


        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(FlightController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("user.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flights", Arrays.asList(temp1, temp2, temp3, temp4));
        map.put("groups", Arrays.asList(groupTemp1, groupTemp2, groupTemp3, groupTemp4));
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
}
