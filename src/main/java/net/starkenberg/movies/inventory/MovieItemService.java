package net.starkenberg.movies.inventory;

import net.starkenberg.movies.user.User;
import net.starkenberg.movies.user.UserService;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MovieItemService {
    private final MovieItemRepository movieItemRepository;
    private final UserService userService;

    public MovieItemService(MovieItemRepository movieItemRepository, UserService userService) {
        this.movieItemRepository = movieItemRepository;
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
        User user = userService.getUserByEmail("brad@starkenberg.net");
        return movieItemRepository.findByOwner(user);
    }

    public MovieItem getMovieByImdbId(JwtAuthenticationToken token, String imdbId) {
        User user = userService.getUserByEmail("brad@starkenberg.net");
        return movieItemRepository.findByOwnerAndImdbId(user, imdbId);
    }

}
