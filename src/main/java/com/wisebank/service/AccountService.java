package com.wisebank.service;

import com.wisebank.model.entity.Account;

import java.util.List;

public interface AccountService {

    List<Account> findAll();

//    void blockAccount(Account accountToBlock);
//
//    void unblockAccount(Account accountToUnblock);
}
