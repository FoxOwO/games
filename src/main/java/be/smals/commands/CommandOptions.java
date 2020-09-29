package be.smals.commands;

public enum CommandOptions {
    SHOW_CATEGORY_BY_ID("Show category by number", new ShowCategoryById()),
    SHOW_GAME_BY_ID("Show game by number", new ShowGameById()),
    SHOW_BORROWER_BY_ID("Show borrower by number", new ShowBorrowerById()),
    SHOW_GAMES_BY_STRING("Show games by text", new ShowGamesBySubString()),
    HOW_ALL_GAMES("how all games", new ShowAllGames()),
    EXIT("Exit the program", new Exit());

    private final String description;
    private final Command command;

    CommandOptions(String description, Command command) {
        this.description = description;
        this.command = command;
    }

    public String getDescription() {
        return description;
    }

    public Command getCommand() {
        return command;
    }
}
