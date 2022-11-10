package com.wisebank.service.impl;

import com.wisebank.model.entity.Account;
import com.wisebank.model.entity.AccountStatus;
import com.wisebank.model.repository.AccountRepository;
import com.wisebank.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AccountServiceImpl implements AccountService {

    private final AccountRepository accountRepository;

    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }

//    public void deleteAccount(Integer id) {
//        accountRepository.deleteById(id);
//    }

//    @Override
//    public void blockAccount(Account accountToBlock) {
//
//        if (accountToBlock.getAccountStatus().getStatus().equalsIgnoreCase("activated")) {
//            accountToBlock.setAccountStatus(accountStatus.getId());
//        }
//    }
//
//    @Override
//    public void unblockAccount(Account accountToUnblock) {
//
//    }
}
