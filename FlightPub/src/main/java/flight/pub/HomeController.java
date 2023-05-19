package flight.pub;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.View;
import flight.pub.beans.*;

@Controller("/home")
public class HomeController {

    @Post(value = "/search", consumes = MediaType.APPLICATION_FORM_URLENCODED) // TODO get form to return json
    @View("display")
    public HttpResponse<?> processSearch(@Body SearchData searchData) {

        System.out.println("WORKING");
        System.out.println(searchData.getLocation() + searchData.getDestination() + searchData.getEndDate()
                + searchData.getStartDate());

        return HttpResponse.ok().body(searchData);
    }

    @Get("/")
    @View("index") // TODO correct
    public HttpResponse<?> index() {
        return HttpResponse.ok();
    }

    @Get("/wizard")
    @View("booking-wizard")
    public HttpResponse<?> displayWizard() {
        return HttpResponse.ok();
    }

    @Get("/explore")
    @View("exploration")
    public HttpResponse<?> displayExplore() {
        return HttpResponse.ok();
    }

    // TODO write data object for destination

}
