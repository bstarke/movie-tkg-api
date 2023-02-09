package net.starkenberg.movies.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    protected SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .authorizeHttpRequests()
                .requestMatchers("/actuator/**", "/v1/plex/**").permitAll()
                .and().authorizeHttpRequests()
                .anyRequest().authenticated()
                .and().oauth2ResourceServer().jwt();
        return httpSecurity.build();
    }
}
