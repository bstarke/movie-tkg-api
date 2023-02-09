package net.starkenberg.movies.imdb;

import net.starkenberg.movies.cinema.Movie;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ImdbService {
    private final RestTemplate restTemplate;

    public ImdbService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public Movie getImdbMovie(String imdbID) {
        String path = String.format("/?r=json&i=%s", imdbID);
        Movie movie = restTemplate.getForObject(path,Movie.class);
        return movie;
    }
}
