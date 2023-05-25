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
import java.net.URI;
import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import static java.time.temporal.ChronoUnit.MINUTES;

import flight.pub.beans.FlightBean;

import flight.pub.controllers.*;

@Controller("/search")
public class SearchController {
    @Get("/")
    @View("advanced-search")
    public HttpResponse<?> search() throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
    IOException, TemplateException {
        List<Object> trips = new ArrayList<Object>();

        // Create trip 1
        FlightBean f1_1 = new FlightBean();
        FlightBean f1_2 = new FlightBean();
        f1_1.f1_1();
        f1_2.f1_2();
        List<FlightBean> flights = Arrays.asList(f1_1, f1_2);
        HashMap<String, Object> trip1 = MakeTrip(flights);
        trips.add(trip1);

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(SearchController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("advanced-search.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("results", trips);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    private HashMap<String, Object> MakeTrip(List<FlightBean> flights){
        HashMap<String, Object> trip = new HashMap<String, Object>();
        trip.put("flights", flights);
        float totalPrice = 0;
        int totalDuration = 0;
        for (FlightBean flight : flights) {
            totalPrice += flight.getCost();
            totalDuration += MINUTES.between(flight.getDepartureTime(), flight.getArrivalTime());
        }
        int hours   = totalDuration / 60;
        int minutes = totalDuration % 60;

        DateTimeFormatter timeFormat = DateTimeFormatter.ofPattern("MMM dd, yyyy HH:mm:ss");

        trip.put("cost", totalPrice);
        trip.put("duration", ""+hours+" hr "+minutes+" min");
        trip.put("stops", flights.size() - 1);
        trip.put("airlineBrand", flights.get(0).getAirlineBrand());
        trip.put("departureTime", flights.get(0).getDepartureTime().format(timeFormat));
        trip.put("arrivalTime", flights.get(flights.size() - 1).getArrivalTime().format(timeFormat));
        LocalDateTime departureTime = flights.get(0).getDepartureTime();
        String departureDate = departureTime.getDayOfMonth() + " " + departureTime.getMonth() + " " + departureTime.getYear();
        trip.put("departureDate", departureDate);

        return trip;
    }
}