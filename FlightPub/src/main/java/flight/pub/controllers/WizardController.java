package flight.pub.controllers;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.views.View;

@Controller("/wizard")
public class WizardController {
    @Get("/")
    @View("wizard")
    public HttpResponse<?> wizardGet() {
        return HttpResponse.ok();
    }

}
