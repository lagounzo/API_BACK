package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Profil;

import java.util.List;

public interface ProfilService {
    List<Profil> getAll();

    Profil Create(Profil Profil);

    Profil Update(Profil Profil);

    void Delete(Long id);

    Profil login(Profil profil);
}
