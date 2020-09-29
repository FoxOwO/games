package be.smals.commands;

import be.smals.domain.Game;
import be.smals.repositories.GamesJDBCRepository;

import java.util.List;
import java.util.Optional;

public class ShowGameById extends IdCommand implements Command{
    /**
     * return the first game found based on a given id
     */
    public void execute() {
        System.out.println("What Game number do you want to see?: ");
        int id = this.getId();
        GamesJDBCRepository gamesJDBCRepository = GamesJDBCRepository.getInstance();
        Optional<List<Game>> reply =  gamesJDBCRepository.findGameById(id);
        if (reply.isPresent()){
            System.out.println(reply.get().get(0).toString());
        } else {
            System.out.println("No game found of id: "+id);
        }
    }

}
