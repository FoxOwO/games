package be.smals.repositories;

import be.smals.domain.Game;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;


@Stateless
public class GameJPARepository {
    @PersistenceContext(unitName = "gamePersistenceUnit")
    EntityManager em;

    public Game findById(int id) {
        return em.find(Game.class, id);
    }

    public List<Game> findAll() {
        return em.createQuery("select g from Game g", Game.class).getResultList();
    }
}