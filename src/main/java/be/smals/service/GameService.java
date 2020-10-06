package be.smals.service;

import be.smals.domain.Game;
import be.smals.repositories.GameJPARepository;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
@LocalBean
public class GameService {
    @Inject
    GameJPARepository gameRepository;

    public Game findById(int id) {
        return gameRepository.findById(id);
    }

    public List<Game> findAll() {
        return gameRepository.findAll();
    }
}
