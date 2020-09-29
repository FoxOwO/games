package be.smals.commands;

import be.smals.domain.Game;
import be.smals.repositories.GamesJDBCRepository;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;

public class ShowAllGames implements Command {
    @Override
    public void execute() {
        System.out.println("howing all available games: ");
        GamesJDBCRepository gamesJDBCRepository = GamesJDBCRepository.getInstance();
        Optional<List<Game>> reply =  gamesJDBCRepository.findAllGames();
        if (reply.isPresent()){
            reply.get().stream().sorted(Comparator.comparing(Game::getName)).forEach(g -> System.out.printf("%-40s %-50s %-5.2f%n", g.getName(), g.getEditor(), g.getPrice()));
        } else {
            System.out.println("No games found.");
        }
    }
}
