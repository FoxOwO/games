package be.smals.commands;

import be.smals.domain.Game;
import be.smals.repositories.GamesJDBCRepository;

import java.util.List;
import java.util.Optional;

public class ShowGamesBySubString extends StringCommand implements Command{
    /**
     * Find first game containing substring then return it
     */
    public void execute() {
        System.out.println("What Game do you want to see?: ");
        String subString = this.getString();
        GamesJDBCRepository gamesJDBCRepository = GamesJDBCRepository.getInstance();
        Optional<List<Game>> reply =  gamesJDBCRepository.findGameBySubString(subString);
        if (reply.isPresent()){
            System.out.println(reply.get().get(0).toString());
        } else {
            System.out.println("No games found with text: : "+ subString);
        }
    }
}
