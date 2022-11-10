package com.wisebank.service.impl;

import com.wisebank.model.entity.AccountStatus;
import com.wisebank.model.repository.AccountStatusRepository;
import com.wisebank.service.AccountStatusService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AccountStatusServiceImpl implements AccountStatusService {

    private final AccountStatusRepository accountStatusRepository;

    @Override
    public List<AccountStatus> findAll() {
        return accountStatusRepository.findAll();
    }
}
