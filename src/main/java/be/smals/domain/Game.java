package be.smals.domain;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;

@Data
@Builder(access = AccessLevel.PUBLIC)
public class Game {

    private int id;
    private String name;
    private String editor;
    private String author;
    private int year_edition;
    private String age;
    private int minPlayers;
    private int maxPlayres;
    private int category_id;
    private String duration;
    private int difficulty_id;
    private double price;
    private String image;

    @Override
    public String toString() {
        return "Game{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", editor='" + editor + '\'' +
                ", author='" + author + '\'' +
                ", year_edition=" + year_edition +
                ", age='" + age + '\'' +
                ", minPlayers=" + minPlayers +
                ", maxPlayres=" + maxPlayres +
                ", category_id=" + category_id +
                ", duration='" + duration + '\'' +
                ", difficulty_id=" + difficulty_id +
                ", price=" + price +
                ", image='" + image + '\'' +
                '}';
    }
}
