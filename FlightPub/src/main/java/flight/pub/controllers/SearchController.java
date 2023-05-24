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
import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import flight.pub.beans.DestinationBean;
import flight.pub.beans.SearchBean;
import flight.pub.beans.UserBean;

import flight.pub.controllers.*;

@Controller("/search")
public class SearchController {
    @Get("/")
    @View("advanced-search")
    public HttpResponse<?> search() {
        return HttpResponse.ok();
    }
}
