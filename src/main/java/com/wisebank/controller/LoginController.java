package com.wisebank.controller;

import com.wisebank.model.entity.Login;
import com.wisebank.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class LoginController {

    private final LoginService loginService;

    @GetMapping("/login/all")
    public List<Login> getAllLogins(){
        return loginService.findAll();
    }
}
