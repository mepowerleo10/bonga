package com.bonga.web.security;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
