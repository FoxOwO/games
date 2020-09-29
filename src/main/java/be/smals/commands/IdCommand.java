package be.smals.commands;

import java.util.Scanner;

public class IdCommand {
    Scanner scanner = new Scanner(System.in);

    protected int getId() {
        int id = scanner.nextInt();
        if (id <= 0){
            System.err.println(" Please select a valid Id");
            return this.getId();
        }
        return id;
    }
}
