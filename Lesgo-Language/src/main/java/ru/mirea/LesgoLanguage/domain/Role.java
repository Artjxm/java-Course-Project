package ru.mirea.LesgoLanguage.domain;

import org.springframework.security.core.GrantedAuthority;

/**
 * @author Moskovka Artyom
 */
public enum Role implements GrantedAuthority {
    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}