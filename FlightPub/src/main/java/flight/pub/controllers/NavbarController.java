package flight.pub.controllers;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Body;
import io.micronaut.views.View;

@Controller("/navbar")
public class NavbarController {

    @Get("/")
    @View("index")
    public HttpResponse<?> index() {
        return HttpResponse.ok();
    }

    @Get("/notifications")
    @View("notifications")
    public HttpResponse<?> notifications() {
        return HttpResponse.ok();
    }

    @Get("/user")
    @View("user")
    public HttpResponse<?> account() {
        return HttpResponse.ok();
    }

    @Get("/logout")
    @View("login")
    public HttpResponse<?> logout() {
        return HttpResponse.ok();
    }
}