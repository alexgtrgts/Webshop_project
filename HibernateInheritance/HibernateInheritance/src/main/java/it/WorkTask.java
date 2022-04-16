package it;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table
@PrimaryKeyJoinColumn(name = "TASK_ID")
public class WorkTask extends Task {

    @Column
    private Double cost;

}
