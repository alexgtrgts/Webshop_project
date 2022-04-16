package it;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@AllArgsConstructor
@Table
@DiscriminatorValue("H")

public class HomeTask extends Task {

    @Column
    private String startDate;

    @Column
    private String endDate;
}
