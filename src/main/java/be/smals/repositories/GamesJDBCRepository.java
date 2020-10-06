package be.smals.repositories;

import be.smals.domain.Borrower;
import be.smals.domain.Category;
import be.smals.domain.Game;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

//todo refactor category and borrower to return list -> like game methods.
public class GamesJDBCRepository {
    private static final GamesJDBCRepository instance = new GamesJDBCRepository();

    public static GamesJDBCRepository getInstance() {
        return instance;
    }

    public Optional<Category> findCatrgoyById(int id){
        List<Category> categories = new ArrayList<>();
        try (PreparedStatement preparedStatement = createConnection()
                    .prepareStatement("SELECT *, c.id as id, c.category_name as category_name FROM games.category as c where c.id like ?")) {
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()){
                categories.add( Category.builder().category_name(resultSet.getString("category_name")).build() );
            }
            if (categories.isEmpty()) {
                return Optional.empty();
            }
            return Optional.of(categories.get(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    public Optional<List<Game>> findGameById(int id) {
        List<Game> games = new ArrayList<>();
        try (PreparedStatement preparedStatement = createConnection()
                .prepareStatement("SELECT * FROM games.game where id like ?")) {
            preparedStatement.setInt(1, id);
            return getGames(games, preparedStatement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    public Optional<Borrower> findBorrowerById(int id) {
        List<Borrower> borrowers = new ArrayList<>();
        try (PreparedStatement preparedStatement = createConnection()
                .prepareStatement("SELECT * FROM games.borrower where id like ?")) {
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()){
                borrowers.add( Borrower.builder()
                        .id(resultSet.getInt("id"))
                        .name(resultSet.getString("borrower_name"))
                        .street(resultSet.getString("street"))
                        .houseNumber(resultSet.getString("house_number"))
                        .busNumber(resultSet.getString("bus_number"))
                        .postcode(resultSet.getInt("postcode"))
                        .city(resultSet.getString("city"))
                        .telephone(resultSet.getString("telephone"))
                        .email(resultSet.getString("email"))
                        .build());
            }
            if (borrowers.isEmpty()) {
                return Optional.empty();
            }
            return Optional.of(borrowers.get(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    public Optional<List<Game>> findGameBySubString(String s) {
        List<Game> games = new ArrayList<>();
        try (PreparedStatement preparedStatement = createConnection()
                .prepareStatement("SELECT * FROM games.game where game_name like ?")) {
            preparedStatement.setString(1, '%'+s+'%');
            return getGames(games, preparedStatement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    private Optional<List<Game>> getGames(List<Game> games, PreparedStatement preparedStatement) throws SQLException {
        preparedStatement.execute();
        ResultSet resultSet = preparedStatement.getResultSet();
        while (resultSet.next()){
            games.add( Game.builder()
                    .id(resultSet.getInt("id"))
                    .gameName(resultSet.getString("game_name"))
                    .editor(resultSet.getString("editor"))
                    .author(resultSet.getString("author"))
                    .yearEdition(resultSet.getInt("year_edition"))
                    .age(resultSet.getString("age"))
                    .minPlayers(resultSet.getInt("min_players"))
                    .maxPlayers(resultSet.getInt("max_players"))
                    .categoryId(resultSet.getInt("category_id"))
                    .playDuration(resultSet.getString("play_duration"))
                    .difficultyId(resultSet.getInt("difficulty_id"))
                    .price(resultSet.getDouble("price"))
                    .image(resultSet.getString("image"))
                    .build());
        }
        if (games.isEmpty()) {
            return Optional.empty();
        }
        return Optional.of(games);
    }

    public Optional<List<Game>> findAllGames() {
        List<Game> games = new ArrayList<>();
        try (PreparedStatement preparedStatement = createConnection()
                .prepareStatement("SELECT * FROM games.game ")) {
            return getGames(games, preparedStatement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }


    public Connection createConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/games?useTimezone=true&serverTimezone=UTC","root","root");
    }


}
