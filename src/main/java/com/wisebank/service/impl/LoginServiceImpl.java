package com.wisebank.service.impl;

import com.wisebank.model.entity.Login;
import com.wisebank.model.repository.LoginRepository;
import com.wisebank.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class LoginServiceImpl implements LoginService {

    private final LoginRepository loginRepository;

    @Override
    public List<Login> findAll() {
        return loginRepository.findAll();
    }
}
