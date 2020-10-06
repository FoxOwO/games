package be.smals.rest;

import be.smals.service.GameService;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 *  class was used to test rest service -> in the end the problem was not having added the war in the pom.xml :shrug:
 */
@Path("/test")
public class TestAPI {
    @Inject
    GameService gameService;

    @GET
    public String findGames() {
        return "Hello World";
    }
}