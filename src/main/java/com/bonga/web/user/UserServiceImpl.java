package com.bonga.web.user;

import java.util.Collection;
import java.util.HashSet;

import com.bonga.web.user.User;
import com.bonga.web.role.RoleRepository;
import com.bonga.web.user.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository repository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>((Collection) roleRepository.findAll()));
        repository.save(user);
    }

    @Override
    public User findByUserName(String username) {
        return repository.findByUsername(username);
    }

}
