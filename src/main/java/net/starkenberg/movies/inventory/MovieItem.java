package net.starkenberg.movies.inventory;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;
import net.starkenberg.movies.cinema.Movie;
import net.starkenberg.movies.user.User;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.util.Set;

@Getter
@Setter
@Entity
@JsonIgnoreProperties({"owner"})
@Table(name = "movie_inventory", uniqueConstraints = { @UniqueConstraint(columnNames = { "movie_id" }) } )
public class MovieItem {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne
    private Movie movie;
    @ManyToMany
    private Set<Medium> media;
    @ManyToOne
    private User owner;
}
