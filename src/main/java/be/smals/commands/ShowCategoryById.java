package be.smals.commands;

import be.smals.domain.Category;
import be.smals.repositories.GamesJDBCRepository;

import java.util.Optional;

public class ShowCategoryById extends IdCommand implements Command{
    public void execute() {
        System.out.println("What Category number do you want to see?: ");
        int id = this.getId();
        GamesJDBCRepository gamesJDBCRepository = GamesJDBCRepository.getInstance();
       Optional<Category> reply =  gamesJDBCRepository.findCatrgoyById(id);
       if (reply.isPresent()){
           System.out.println(reply.get().toString());
       } else {
           System.out.println("No category found of id: "+id);
       }
    }
}
