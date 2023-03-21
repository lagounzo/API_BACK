package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Profil;
import com.di.bootcamp.projet.model.Profildto;

import java.util.List;

public interface ProfilService {
    List<Profil> getAll();

    Profil Create(Profildto Profil);

    Profil Update(Profil Profil);

    void Delete(Long id);
}
