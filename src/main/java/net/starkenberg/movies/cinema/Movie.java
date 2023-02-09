package net.starkenberg.movies.cinema;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@Setter
@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(unique = true)
    public String imdbID;
    @JsonProperty("Title")
    public String title;
    @JsonProperty("Year")
    public String year;
    @JsonProperty("Rated")
    public String rated;
    @JsonProperty("Released")
    public String released;
    @JsonProperty("Runtime")
    public String runtime;
    @JsonProperty("Genre")
    public String genre;
    @JsonProperty("Director")
    public String director;
    @JsonProperty("Writer")
    @Column(name = "writer")
    public String writer;
    @JsonProperty("Actors")
    public String actors;
    @JsonProperty("Plot")
    public String plot;
    @JsonProperty("Language")
    public String language;
    @JsonProperty("Country")
    public String country;
    @JsonProperty("Awards")
    public String awards;
    @JsonProperty("Poster")
    public String poster;
    @JsonProperty("Metascore")
    public String metascore;
    public String imdbRating;
    public String imdbVotes;
    @JsonProperty("Type")
    public String type;
    @JsonProperty("DVD")
    public String dvd;
    @JsonProperty("BoxOffice")
    public String boxOffice;
    @JsonProperty("Production")
    public String production;

    public void setWriter(String writer) {
        if (writer.length() > 255) {
            this.writer = writer.substring(0, 255);
        } else {
            this.writer = writer;
        }
    }
}
