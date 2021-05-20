package ru.mirea.LesgoLanguage.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.mirea.LesgoLanguage.domain.User;

/**
 * @author Moskovka Artyom
 */

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}