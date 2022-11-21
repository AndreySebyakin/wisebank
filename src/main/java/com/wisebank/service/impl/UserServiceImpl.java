package com.wisebank.service.impl;

import com.wisebank.dto.CreateUserDto;
import com.wisebank.model.entity.Login;
import com.wisebank.model.entity.User;
import com.wisebank.model.repository.LoginRepository;
import com.wisebank.model.repository.RoleRepository;
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
    private final LoginRepository loginRepository;
    private final RoleRepository roleRepository;

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

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public void deleteById(Integer id) {
        userRepository.deleteById(id);
    }

    @Override
    public void save(CreateUserDto createUserDto) {

        var user = new User();
        user.setName(createUserDto.getName());
        user.setSurname(createUserDto.getSurname());
        user.setRoleId(roleRepository.getReferenceById(1));

        var login = new Login();
        login.setUserLogin(createUserDto.getUserLogin());
        login.setPassword(createUserDto.getPassword());
        login.setUser(user);

        loginRepository.save(login);
    }
}
