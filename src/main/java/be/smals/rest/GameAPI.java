package be.smals.rest;

import be.smals.domain.Game;
import be.smals.service.GameService;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@RequestScoped
@Produces(MediaType.APPLICATION_JSON)
@Path("/game")
public class GameAPI {
    @Inject
    GameService gameService;

    @GET
    @Produces("application/json")
    public List<Game> findGames() {
        return gameService.findAll();
    }
}
