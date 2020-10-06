package be.smals.domain;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Data
@Entity
@Builder(access = AccessLevel.PUBLIC)
@NoArgsConstructor
@AllArgsConstructor
public class Game {

    @Id @GeneratedValue
    private int id;
    @Column(name = "category_id")
    private int categoryId;
    @Column(name = "difficulty_id")
    private Integer difficultyId;
    @Column(nullable = false)
    @Size(min = 1, max = 50)
    private String gameName;
    @Column(nullable = false)
    @Size(min = 1, max = 50)
    private String editor;
    @Column(nullable = false)
    @Size(min = 1, max = 50)
    private String author;
    @Column(nullable = false)
    private int yearEdition;
    @Column(nullable = false)
    @Size(min = 1, max = 20)
    private String age;
    @Column(nullable = false)
    private int minPlayers;
    @Column(nullable = false)
    private int maxPlayers;
    @Size(min = 1, max = 20)
    private String playDuration;
    @Column(nullable = false)
    private double price;
    private String image;


    @Override
    public String toString() {
        return "Game{" +
                "id=" + id +
                ", categoryId=" + categoryId +
                ", difficultyId=" + difficultyId +
                ", gameName='" + gameName + '\'' +
                ", editor='" + editor + '\'' +
                ", author='" + author + '\'' +
                ", yearEdition=" + yearEdition +
                ", age='" + age + '\'' +
                ", minPlayers=" + minPlayers +
                ", maxPlayers=" + maxPlayers +
                ", playDuration='" + playDuration + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                '}';
    }
}
