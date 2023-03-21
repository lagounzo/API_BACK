package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.RoleProfil;

import java.util.List;

public interface RoleProfilService {
    List<RoleProfil> getAll();
    RoleProfil Create(RoleProfil roleProfil);
    RoleProfil Update(RoleProfil roleProfil);

    void Delete(Long id);
}
