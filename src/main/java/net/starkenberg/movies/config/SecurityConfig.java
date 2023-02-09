package net.starkenberg.movies.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .authorizeRequests()
                .antMatchers("/actuator/**", "/v1/plex/**").permitAll()
                .and()
                .authorizeRequests()
                .anyRequest().authenticated()
                .and().cors()
                .and().csrf().disable()
                .oauth2ResourceServer().jwt();
    }
}
