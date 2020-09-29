package be.smals.commands;

public class Exit implements Command {
    public void execute() {
        System.out.println("--------- Exiting the application ----------");
        System.exit(0);
    }
}
