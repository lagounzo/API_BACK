package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Pharmacie;

import java.util.List;

public interface PharmacieService {
    List<Pharmacie> getAll();

    Pharmacie Create(Pharmacie pharmacie);

    Pharmacie Update(Pharmacie hopitPharmacie);

    void Delete(Long id);
}
