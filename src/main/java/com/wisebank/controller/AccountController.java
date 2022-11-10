package com.wisebank.controller;

import com.wisebank.model.entity.Account;
import com.wisebank.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class AccountController {

    private final AccountService accountService;

    @GetMapping("/account/all")
    public List<Account> getAllAccounts(){
        return accountService.findAll();
    }
}
