package net.starkenberg.movies.user;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class UserService {
    private final UserRepository repo;

    public UserService(UserRepository repo) {
        this.repo = repo;
    }

    public User getUserFromToken(JwtAuthenticationToken token) {
        User user = repo.findByEmail(token.getToken().getClaimAsString("email"));
        if (user == null || user.getId() == null) {
            user = new User();
            user.setUserId(token.getToken().getClaimAsString("preferred_username"));
            user.setId(token.getToken().getClaimAsString("sub"));
            user.setEmail(token.getToken().getClaimAsString("email"));
            user.setDisplayName(token.getToken().getClaimAsString("name"));
            repo.save(user);
        }
        return user;
    }

    public User getUserByEmail(String email) {
        return repo.findByEmail(email);
    }

    public User getUserByUID(String uid) {
        log.debug("UID: {}", uid);
        User user = repo.findAll().get(0);
        log.debug("User: {}", user.getEmail());
        user = repo.findByUserId(uid);
        log.debug("User: {}", user.getId());
        return user;
    }

}
