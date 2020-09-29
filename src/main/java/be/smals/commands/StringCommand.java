package be.smals.commands;

import java.util.Scanner;

/**
 * super class for all commands needing to take in a string as extra parameter
 */
public class StringCommand {
    Scanner scanner = new Scanner(System.in);

    protected String getString() {
        String string = scanner.nextLine();
        // check string for mistakes
        if (string.contains(";") || string.contains("--")){
            System.err.println("Invallid characters in string!, please retry:");
           return this.getString();
        }
        return string;
    }
}
