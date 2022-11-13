package com.wisebank.service;

import com.wisebank.dto.CreateUserDto;
import com.wisebank.model.entity.User;

import java.util.List;

public interface UserService {

    User findById(Integer id);

    List<User> findUserByName();

    void save(CreateUserDto createUserDto);
}
