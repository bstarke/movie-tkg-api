package net.starkenberg.movies.user;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;
import net.starkenberg.movies.inventory.MovieItem;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "users")
@JsonIgnoreProperties({"movieItems"})
public class User {
    @Id
    private String id;
    @Column(unique = true)
    public String email;
    public String userId;
    public String displayName;
    @OneToMany(mappedBy = "owner")
    public List<MovieItem> movieItems;
}
