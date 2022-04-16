package it;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@AllArgsConstructor
@Table
@PrimaryKeyJoinColumn(name = "TASK_ID")
public class HomeTask extends Task {

    @Column
    private String startDate;

    @Column
    private String endDate;
}
