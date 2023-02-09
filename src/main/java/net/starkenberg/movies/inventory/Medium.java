package net.starkenberg.movies.inventory;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

import static jakarta.persistence.GenerationType.AUTO;

@Getter
@Setter
@Entity
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"type","location"}))
public class Medium {
    @Id
    @GeneratedValue(strategy = AUTO)
    private Long id;
    private MediaType type;
    private String location;
}
