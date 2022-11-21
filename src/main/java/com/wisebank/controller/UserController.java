package com.wisebank.controller;

import com.wisebank.dto.CreateUserDto;
import com.wisebank.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping(value = "/showCreateUser")
    public String showCreateUser(Model model) {
        model.addAttribute("createUser", new CreateUserDto());
        return "createUser";
    }

    @PostMapping(value = "/createUser")
    public String createUser(@ModelAttribute(value = "createUser") CreateUserDto createUserDto, Model model) {
        userService.save(createUserDto);
        return "main";
    }

    @GetMapping(value = "/users")
    public String getAllUsers(Model model) {
        var users = userService.findAll();
        model.addAttribute("users", users);
        return "users";
    }
}
