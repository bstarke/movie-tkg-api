package net.starkenberg.movies.imdb;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpRequest;
import org.springframework.http.client.ClientHttpRequestExecution;
import org.springframework.web.client.RestTemplate;

@Getter
@Setter
@Configuration
@ConfigurationProperties(prefix = "app.imdb")
public class ImdbApiConfig {

    private String key;
    private String host;
    private String baseUrl;

    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder
                .rootUri(baseUrl)
                .interceptors(
                        (HttpRequest request, byte[] body, ClientHttpRequestExecution execution) -> {
                            request.getHeaders().set("x-rapidapi-host", host);
                            request.getHeaders().set("x-rapidapi-key", key);
                            return execution.execute(request, body);
                        })
                .build();
    }
}
