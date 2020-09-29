package be.smals;

import be.smals.commands.CommandOptions;
import be.smals.commands.GamesWorker;

import java.util.Arrays;
import java.util.Optional;
import java.util.Scanner;

import static java.lang.Thread.sleep;

public class Main {
    private Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("devos_jorne_games");
        Main main = new Main();
        main.appStart();
    }

    private void appStart() {
        while  (true) try {
            System.out.println("What do you want to do?");
            showAvailableCommands();
            Optional<CommandOptions> commandOption = getCommandOption();
            commandOption.ifPresent(commandOptions -> new GamesWorker().doWork(commandOptions.getCommand()));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    Optional<CommandOptions> getCommandOption() throws InterruptedException {
        System.out.print("Choose a command:");
        int commandNumber = scanner.nextInt();

        Optional<CommandOptions> optionalCommandOptions = Arrays.stream(CommandOptions.values())
                .filter(commandOptions -> commandOptions.ordinal() == commandNumber-1)
                .findFirst();
        if (!optionalCommandOptions.isPresent()) {
            System.err.println("Give in a correct number!");
            sleep(1500);
            this.appStart();
        }
        return optionalCommandOptions;
    }


    public void showAvailableCommands() {
        Arrays.stream(CommandOptions.values())
                .forEach(commandOptions -> System.out.println(commandOptions.ordinal()+1 + " " + commandOptions.getDescription()));
    }
}
