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
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import static java.time.temporal.ChronoUnit.MINUTES;

import flight.pub.beans.FlightBean;
import flight.pub.beans.SearchBean;

@Controller("/search")
public class SearchController {
    @Post(value="/", consumes = MediaType.APPLICATION_FORM_URLENCODED)
    @View("advanced-search")
    public HttpResponse<?> search(@Body SearchBean searchData)
            throws TemplateNotFoundException, MalformedTemplateNameException, ParseException,
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

        // Create trip 2
        FlightBean f2_1 = new FlightBean();
        FlightBean f2_2 = new FlightBean();
        FlightBean f2_3 = new FlightBean();
        FlightBean f2_4 = new FlightBean();
        f2_1.f2_1();
        f2_2.f2_2();
        f2_3.f2_3();
        f2_4.f2_4();
        flights = Arrays.asList(f2_1, f2_2, f2_3, f2_4);
        HashMap<String, Object> trip2 = MakeTrip(flights);
        trips.add(trip2);

        // Create trip 3
        FlightBean f3_1 = new FlightBean();
        FlightBean f3_2 = new FlightBean();
        f3_1.f3_1();
        f3_2.f3_2();
        flights = Arrays.asList(f3_1, f3_2);
        HashMap<String, Object> trip3 = MakeTrip(flights);
        trips.add(trip3);

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_27);
        configuration.setClassForTemplateLoading(SearchController.class, "/views");
        StringWriter writer = new StringWriter();
        Template template = configuration.getTemplate("advanced-search.ftl");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("results", trips);
        map.put("searchData", searchData);
        template.process(map, writer);
        return HttpResponse.ok().body(map);
    }

    private HashMap<String, Object> MakeTrip(List<FlightBean> flights){
        HashMap<String, Object> trip = new HashMap<String, Object>();
        trip.put("flights", flights);
        float totalPrice = 0;
        for (FlightBean flight : flights) {
            totalPrice += flight.getCost();
        }

        long durationMinutes = MINUTES.between(
            flights.get(0).getDepartureTime(), 
            flights.get(flights.size() - 1).getArrivalTime());

        long hours   = durationMinutes / 60;
        long minutes = durationMinutes % 60;

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
