package com.bonga.web.user;

import com.bonga.web.user.User;

public interface UserService {
    public void save(User user);

    public User findByUserName(String username);
}
