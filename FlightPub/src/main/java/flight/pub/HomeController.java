package flight.pub;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.View;
// import flight.pub.beans.*;

@Controller("/home")
public class HomeController {

    @Post(value = "/search", consumes = MediaType.APPLICATION_FORM_URLENCODED)
    @View("display")
    public HttpResponse<?> processSearch(@Body SearchData searchData) {
        System.out.println("WORKING");
        return HttpResponse.ok().body(searchData.getLocation());
    }

    // @Post(value = "/search", consumes = MediaType.APPLICATION_FORM_URLENCODED)
    // @View("") // TODO correct
    // public HttpResponse<?> processDestination(@Body FormData formData) {
    // System.out.println("WORKING");
    // return HttpResponse.ok().body(formData);
    // }

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
    @View("exploration") // TODO correct
    public HttpResponse<?> displayExplore() {
        return HttpResponse.ok();
    }

    // TODO write data object for destination

}
