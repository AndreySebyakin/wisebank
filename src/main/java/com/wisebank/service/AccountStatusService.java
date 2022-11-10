package com.wisebank.service;

import com.wisebank.model.entity.AccountStatus;

import java.util.List;

public interface AccountStatusService {

    List<AccountStatus> findAll();
}
