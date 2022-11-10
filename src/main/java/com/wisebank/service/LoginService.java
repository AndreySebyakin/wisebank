package com.wisebank.service;

import com.wisebank.model.entity.Login;

import java.util.List;

public interface LoginService {

    List<Login> findAll();
}
