package com.wisebank.controller;

import com.wisebank.model.entity.User;
import com.wisebank.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/user/{id}")
    public User getUser(@PathVariable Integer id){
        return userService.findById(id);
    }

    @GetMapping("/user/example")
    public List<User> getUserExample(){
        return userService.findUserByName();
    }
}
