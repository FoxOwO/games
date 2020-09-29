package be.smals.commands;

import be.smals.domain.Borrower;
import be.smals.repositories.GamesJDBCRepository;

import java.util.Optional;

public class ShowBorrowerById extends IdCommand implements Command{
    public void execute() {
        System.out.println("What Borrower number do you want to see?: ");
        int id = this.getId();
        GamesJDBCRepository gamesJDBCRepository = GamesJDBCRepository.getInstance();
        Optional<Borrower> reply =  gamesJDBCRepository.findBorrowerById(id);
        if (reply.isPresent()){
            System.out.println(reply.get().toString());
        } else {
            System.out.println("No borrower found of id: "+id);
        }
    }
}
