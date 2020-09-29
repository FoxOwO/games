package be.smals.domain;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;

@Data
@Builder(access = AccessLevel.PUBLIC)
public class Borrower {

    private int id;
    private String name;
    private String street;
    private String houseNumber;
    private String busNumber;
    private int postcode;
    private String city;
    private String telephone;
    private String email;

}
