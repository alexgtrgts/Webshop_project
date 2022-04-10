package entity;

import lombok.*;

@EqualsAndHashCode
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Car {

    public Car(String carname, String color, int price) {
        this.carname = carname;
        this.color = color;
        this.price = price;
    }

    private int id;
    private String carname;
    private String color;
    private int price;

}
