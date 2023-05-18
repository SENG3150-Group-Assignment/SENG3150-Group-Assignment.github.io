package flight.pub;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.HttpResponse;
import io.micronaut.views.View;

@Controller
public class NameFormController {

    @Get("/nameform")
    @View("index")
    public HttpResponse<?> displayForm() {
        return HttpResponse.ok();
    }
}