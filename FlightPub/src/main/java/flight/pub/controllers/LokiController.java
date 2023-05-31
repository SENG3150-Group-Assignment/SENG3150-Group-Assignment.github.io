package flight.pub.controllers;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.views.View;

@Controller("/lokisearch")
public class LokiController {
    @Get("/")
    @View("loki-search")
    public HttpResponse<?> lokiGet() {
        // To be implemented
        return HttpResponse.ok();
    }

    @Post()
    @View("advanced-search")
    public HttpResponse<?> lokiPost() {
        // To be implemented
        return HttpResponse.ok();
    }
}
