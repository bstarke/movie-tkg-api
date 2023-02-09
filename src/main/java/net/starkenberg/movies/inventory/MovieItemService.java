package net.starkenberg.movies.inventory;

import net.starkenberg.movies.cinema.Movie;
import net.starkenberg.movies.cinema.MovieRepository;
import net.starkenberg.movies.user.User;
import net.starkenberg.movies.user.UserService;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class MovieItemService {
    private final MovieItemRepository movieItemRepository;
    private final MovieRepository movieRepository;
    private final MediumRepository mediumRepository;
    private final UserService userService;

    public MovieItemService(MovieItemRepository movieItemRepository, MovieRepository movieRepository, MediumRepository mediumRepository, UserService userService) {
        this.movieItemRepository = movieItemRepository;
        this.movieRepository = movieRepository;
        this.mediumRepository = mediumRepository;
        this.userService = userService;
    }

    public MovieItem getById(Long id) {
        Optional<MovieItem> movieItem = movieItemRepository.findById(id);
        if (movieItem.isPresent()) {
            return movieItem.get();
        }
        return null;
    }

    public List<MovieItem> getAll(JwtAuthenticationToken token) {
        User user = userService.getUserFromToken(token);
        return movieItemRepository.findByOwner(user);
    }

    public MovieItem getMovieByImdbId(JwtAuthenticationToken token, String imdbId) {
        User user = userService.getUserFromToken(token);
        return movieItemRepository.findByOwnerAndImdbId(user, imdbId);
    }

    public MovieItem getMovieByImdbId(String imdbId, User user) {
        return movieItemRepository.findByOwnerAndImdbId(user, imdbId);
    }

    private Medium getMedium(MediaType type, String location) {
        Medium medium = mediumRepository.findByTypeAndLocation(type, location);
        if (medium == null) {
            medium = new Medium();
            medium.setType(type);
            medium.setLocation(location);
            medium = mediumRepository.save(medium);
        }
        return medium;
    }

    private MovieItem getMovieItem(Movie movie, User user) {
        MovieItem movieItem = movieItemRepository.findByMovieAndOwner(movie, user);
        if (movieItem == null) {
            movieItem = new MovieItem();
            movieItem.setOwner(user);
            movieItem.setMovie(movie);
            movieItem = movieItemRepository.save(movieItem);
        }
        return movieItem;
    }

    private void addLocationIfMissing(MovieItem movieItem, MediaType mediaType, String location) {
        if (movieItem.getMedia() == null) {
            Set<Medium> media = new HashSet<Medium>();
            media.add(getMedium(mediaType, location));
            movieItem.setMedia(media);
        } else {
            for (Medium medium : movieItem.getMedia()) {
                if (medium.getType() == mediaType && medium.getLocation().equalsIgnoreCase(location))
                    return;
            }
            movieItem.getMedia().add(getMedium(mediaType, location));
        }
        movieItemRepository.save(movieItem);
    }
}
