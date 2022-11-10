package com.wisebank.service.impl;

import com.wisebank.model.entity.Role;
import com.wisebank.model.repository.RoleRepository;
import com.wisebank.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {
    private final RoleRepository roleRepository;

    @Override
    public List<Role> findAll() {
        return roleRepository.findAll();
    }

    @Override
    public Role findById(Integer id) {
        return roleRepository.getReferenceById(id);
    }
}
