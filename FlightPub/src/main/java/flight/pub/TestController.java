package flight.pub;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.View;
import io.micronaut.core.annotation.Introspected;

@Controller("/test")
public class TestController {
    @Get("/test")
    @View("form")
    public HttpResponse<?> displayForm() {
        return HttpResponse.ok();
    }

    @Post(value = "/process", consumes = MediaType.APPLICATION_FORM_URLENCODED)
    @View("display")
    public HttpResponse<?> processName(@Body FormData formData) {
    System.out.println("WORKING");
    return HttpResponse.ok().body(formData);
    }

    @Introspected
    public static class FormData {
        private String name;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
}
