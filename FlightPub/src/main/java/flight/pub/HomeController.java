package flight.pub;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.ModelAndView;
import io.micronaut.views.View;
import jakarta.inject.Inject;
import flight.pub.beans.*;

@Controller("/home")
public class HomeController {

    // private SearchData searchData;
    // @Inject
    // public HomeController(SearchData searchData) {
    //     this.searchData = searchData;
    // }

    @Post(value = "/search", consumes = MediaType.APPLICATION_FORM_URLENCODED)
    public ModelAndView<SearchData> processSearch(@Body SearchData searchData) {
        // this.searchData = newSearchData;
        System.out.println("WORKING");
        return new ModelAndView<>("display", searchData);
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
    @View("exploration")
    public HttpResponse<?> displayExplore() {
        return HttpResponse.ok();
    }

    // TODO write data object for destination

}
