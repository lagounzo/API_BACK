package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.RoleProfil;
import com.di.bootcamp.projet.repository.RoleProfilRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RoleProfilServiceImpl implements RoleProfilService{

    @Autowired
    private RoleProfilRepository roleProfilRepository;
    @Override
    public List<RoleProfil> getAll() {
        return roleProfilRepository.findAll();
    }

    @Override
    public RoleProfil Create(RoleProfil roleProfil) {
        return roleProfilRepository.save(roleProfil);
    }

    @Override
    public RoleProfil Update(RoleProfil roleProfil) {
        return roleProfilRepository.save(roleProfil);
    }

    @Override
    public void Delete(Long id) {

    }
}
