package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Medein;

import java.util.List;

public interface MedecinService {
    List<Medein> getAll();
    Medein Create(Medein medein);
    Medein Update(Medein medein);
    void Delete(Long id);

}

