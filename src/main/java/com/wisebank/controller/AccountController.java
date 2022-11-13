package com.wisebank.controller;

import com.wisebank.dto.CreateAccountDto;
import com.wisebank.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class AccountController {

    private final AccountService accountService;

    @GetMapping(value = "/showCreateAccount")
    public String showCreateAccount(Model model) {
        model.addAttribute("createAccount", new CreateAccountDto());
        return "createAccount";
    }

    @PostMapping(value = "/createAccount")
    public String createAccount(@ModelAttribute(value = "createAccount") CreateAccountDto createAccountDto, Model model) {
        accountService.save(createAccountDto);
        return "main";
    }
}
