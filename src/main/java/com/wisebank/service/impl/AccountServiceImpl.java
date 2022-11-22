package com.wisebank.service.impl;

import com.wisebank.dto.CreateAccountDto;
import com.wisebank.model.entity.Account;
import com.wisebank.model.entity.User;
import com.wisebank.model.repository.AccountRepository;
import com.wisebank.model.repository.AccountStatusRepository;
import com.wisebank.model.repository.UserRepository;
import com.wisebank.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AccountServiceImpl implements AccountService {

    private final AccountRepository accountRepository;
    private final AccountStatusRepository accountStatusRepository;
    private final UserRepository userRepository;

    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }

    @Override
    public void save(CreateAccountDto createAccountDto) {

        var user = new User();
        user = userRepository.getReferenceById(createAccountDto.getUserId());

        var account = new Account();
        account.setAccountBalance(0.0);
        account.setAccountLimit(createAccountDto.getAccountLimit());
        account.setAccountStatus(accountStatusRepository.getReferenceById(2));
        account.setUser(user);

        accountRepository.save(account);
    }

    @Override
    public Account blockAccount(Integer id) {

        Account accountForBlock = accountRepository.getReferenceById(id);
        if (accountForBlock.getAccountStatus().getStatus().equalsIgnoreCase("activated")) {
            accountForBlock.setAccountStatus(accountStatusRepository.getReferenceById(1));
            accountRepository.save(accountForBlock);
        }
        return accountForBlock;
    }

    @Override
    public Account unblockAccount(Integer id) {
        Account accountForUnblock = accountRepository.getReferenceById(id);
        if (accountForUnblock.getAccountStatus().getStatus().equalsIgnoreCase("blocked")) {
            accountForUnblock.setAccountStatus(accountStatusRepository.getReferenceById(2));
            accountRepository.save(accountForUnblock);
        }
        return accountForUnblock;
    }
}
