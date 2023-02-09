package net.starkenberg.movies.inventory;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Getter
@Setter
@Entity
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"type","location"}))
public class Medium {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private MediaType type;
    private String location;
}
