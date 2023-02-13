package net.starkenberg.movies.inventory;

import net.starkenberg.movies.user.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieItemRepository extends JpaRepository<MovieItem, Long> {

    @Override
    @Query(value = "SELECT DISTINCT mi FROM MovieItem mi LEFT JOIN FETCH mi.movie LEFT JOIN FETCH mi.media")
    List<MovieItem> findAll();

    @Query(value = "SELECT DISTINCT mi FROM MovieItem mi LEFT JOIN FETCH mi.movie LEFT JOIN FETCH mi.media WHERE mi.owner = :owner ORDER BY mi.movie.title")
    List<MovieItem> findByOwner(User owner);

    @Query(value = "SELECT mi FROM MovieItem mi LEFT JOIN FETCH mi.movie LEFT JOIN FETCH mi.media WHERE mi.owner = :owner AND mi.movie.imdbID = :imdbId")
    MovieItem findByOwnerAndImdbId(User owner, String imdbId);

}
