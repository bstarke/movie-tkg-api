package net.starkenberg.movies.inventory;

import lombok.extern.slf4j.Slf4j;
import net.starkenberg.movies.user.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping(path = "/v1/movies")
public class MovieController {
    private final MovieItemService movieItemService;
    private final UserService userService;

    public MovieController(MovieItemService movieItemService, UserService userService) {
        this.movieItemService = movieItemService;
        this.userService = userService;
    }

    @GetMapping
    public ResponseEntity<List<MovieItem>> getMovies(JwtAuthenticationToken authenticationToken) {
        if (authenticationToken != null)
            log.info("Email: " + authenticationToken.getToken().getClaimAsString("email"));
        List<MovieItem> movies = movieItemService.getAll(authenticationToken);
        if (movies != null)
            return new ResponseEntity<>(movies, HttpStatus.OK);
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @GetMapping(path = "/imdb/{imdbID}")
    public ResponseEntity<MovieItem> getMovie(JwtAuthenticationToken authenticationToken, @PathVariable String imdbID) {
        MovieItem movie = movieItemService.getMovieByImdbId(authenticationToken, imdbID);
        if (movie != null)
            return new ResponseEntity<>(movie, HttpStatus.OK);
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @GetMapping(path = "/{id}")
    public ResponseEntity<MovieItem> getMovie(@PathVariable Long id) {
        MovieItem movie = movieItemService.getById(id);
        if (movie != null)
            return new ResponseEntity<>(movie, HttpStatus.OK);
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

}
