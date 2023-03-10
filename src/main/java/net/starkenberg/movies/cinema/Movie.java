package net.starkenberg.movies.cinema;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

import static jakarta.persistence.GenerationType.AUTO;

@Getter
@Setter
@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Movie {
    @Id
    @GeneratedValue(strategy = AUTO)
    private Integer id;
    @Column(unique = true)
    public String imdbID;
    @JsonProperty("Title")
    public String title;
    @JsonProperty("Year")
    public Short ryear;
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
