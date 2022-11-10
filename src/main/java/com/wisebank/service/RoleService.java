package com.wisebank.service;

import com.wisebank.model.entity.Role;

import java.util.List;

public interface RoleService {

    List<Role> findAll();

    Role findById(Integer id);
}
