package flight.pub;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import io.micronaut.core.annotation.Introspected;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.ModelAndView;
import io.micronaut.views.View;
import jakarta.inject.Inject;
// import flight.pub.beans.*;
import jakarta.inject.Singleton;

@Controller("/home")
public class HomeController {

    // private SearchData searchData;
    // @Inject
    // public HomeController(SearchData searchData) {
    // this.searchData = searchData;
    // }

    @Post(value = "/search", consumes = MediaType.APPLICATION_FORM_URLENCODED) // TODO get form to return json
    @View("display")
    public HttpResponse<?> processSearch(@Body SearchData searchData) {
        // this.searchData = newSearchData;
        System.out.println("WORKING");
        System.out.println(searchData.getLocation() + searchData.getDestination() + searchData.getEndDate()
                + searchData.getStartDate());

        return HttpResponse.ok().body(searchData);
        // return new ModelAndView<>("display", searchData);
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

    @Singleton
    @Introspected
    public static class SearchData {
        // @JsonProperty("location")
        private String location;
        // @JsonProperty("destination")
        private String destination;
        // @JsonProperty("startDate")
        private LocalDate startDate;
        // @JsonProperty("endDate")
        private LocalDate endDate;

        public String getLocation() {

            return location;
        }

        public void setLocation(String location) {

            this.location = location;
        }

        public String getDestination() {
            return destination;
        }

        public void setDestination(String destination) {
            this.destination = destination;
        }

        public String getStartDate() {
            if (endDate != null) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                return startDate.format(formatter);
            } else {
                return "";
            }
        }

        public void setStartDate(LocalDate startDate) {
            this.startDate = startDate;
        }

        public String getEndDate() {
            if (endDate != null) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                return endDate.format(formatter);
            } else {
                return "";
            }
        }

        public void setEndDate(LocalDate endDate) {
            this.endDate = endDate;
        }
    }
}
