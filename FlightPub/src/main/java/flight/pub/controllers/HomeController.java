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
import flight.pub.beans.SearchBean;

@Controller("/home")
public class HomeController {

    // Handle the search form submission
    @Post(value = "/search", consumes = MediaType.APPLICATION_FORM_URLENCODED) // TODO get form to return json
    @View("display")
    public HttpResponse<?> processSearch(@Body SearchBean searchData) {
        return HttpResponse.ok().body(searchData);
    }

    // Display the home page
    @Get("/")
    @View("index")
    public HttpResponse<?> index() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
            IOException, TemplateException {

        // Dummy data
        DestinationBean nepal = new DestinationBean();
        DestinationBean ny = new DestinationBean();
        DestinationBean mystery = new DestinationBean();
        DestinationBean mystery2 = new DestinationBean();
        ny.ny();
        mystery.mystery();
        mystery2.mystery();
        nepal.nepal();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("index.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("locations", Arrays.asList(ny, mystery, nepal, mystery2));
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
    @Get("/destination")
    @View("destination")
    public HttpResponse<?> destination() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {

        DestinationBean nepal = new DestinationBean();
        nepal.nepal();


        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(HomeController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("destination.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("destination", nepal);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
     
    }
    
}
