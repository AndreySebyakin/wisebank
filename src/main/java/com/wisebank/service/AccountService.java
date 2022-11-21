package com.wisebank.service;

import com.wisebank.dto.CreateAccountDto;
import com.wisebank.model.entity.Account;

import java.util.List;

public interface AccountService {

    List<Account> findAll();

    void save(CreateAccountDto createAccountDto);

    void blockAccount(Integer id);
}
