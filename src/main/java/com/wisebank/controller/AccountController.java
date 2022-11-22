package com.wisebank.controller;

import com.wisebank.dto.CreateAccountDto;
import com.wisebank.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class AccountController {

    private final AccountService accountService;

    @Secured("ROLE_ADMIN")
    @GetMapping(value = "/showCreateAccount")
    public String showCreateAccount(Model model) {
        model.addAttribute("createAccount", new CreateAccountDto());
        return "createAccount";
    }

    @Secured("ROLE_ADMIN")
    @PostMapping(value = "/createAccount")
    public String createAccount(@ModelAttribute(value = "createAccount") CreateAccountDto createAccountDto,
                                Model model) {
        accountService.save(createAccountDto);
        return "main";
    }

    @Secured("ROLE_ADMIN")
    @GetMapping(value = "/block.account")
    public String blockAccount(@RequestParam Integer id, Model model) {
        var account = accountService.blockAccount(id);
        model.addAttribute("account", account);
        return "accountDetails";
    }

    @Secured("ROLE_ADMIN")
    @GetMapping(value = "/unblock.account")
    public String unblockAccount(@RequestParam Integer id, Model model) {
        var account = accountService.unblockAccount(id);
        model.addAttribute("account", account);
        return "accountDetails";
    }
}
