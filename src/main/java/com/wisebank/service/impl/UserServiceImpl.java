package com.wisebank.service.impl;

import com.wisebank.model.entity.User;
import com.wisebank.model.repository.UserRepository;
import com.wisebank.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    @Override
    public User findById(Integer id) {
        return userRepository.getReferenceById(id);
    }

    @Override
    public List<User> findUserByName() {
        User example = new User();
        example.setName("Vladislav");
        example.setSurname("Filatov");
        List<User> users = userRepository.findAll(Example.of(example, ExampleMatcher.matchingAll()));
        return users;
    }
}
