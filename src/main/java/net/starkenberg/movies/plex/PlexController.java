package net.starkenberg.movies.plex;

import net.starkenberg.movies.inventory.MediaType;
import net.starkenberg.movies.inventory.MovieItem;
import net.starkenberg.movies.inventory.MovieItemService;
import net.starkenberg.movies.user.User;
import net.starkenberg.movies.user.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/v1/plex")
public class PlexController {
    private final MovieItemService movieItemService;
    private final UserService userService;

    public PlexController(MovieItemService movieItemService, UserService userService) {
        this.movieItemService = movieItemService;
        this.userService = userService;
    }

    @PostMapping(path = "/{imdbID}")
    public ResponseEntity<MovieItem> saveMovie(@PathVariable String imdbID) {
        MovieItem movie = movieItemService.addToInventory(imdbID, MediaType.Digital, "Plex", getDefaultUser());
        if (movie != null)
            return new ResponseEntity<>(movie, HttpStatus.CREATED);
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @GetMapping(path = "/{imdbID}")
    public ResponseEntity<MovieItem> getMovie(@PathVariable String imdbID) {
        MovieItem movie = movieItemService.getMovieByImdbId(imdbID, getDefaultUser());
        if (movie != null)
            return new ResponseEntity<>(movie, HttpStatus.OK);
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    private User getDefaultUser() {
        return userService.getUserById("bstarke");
    }

}
