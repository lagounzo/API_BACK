package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Prescription;

import java.util.List;

public interface PrescriptionService {
    List<Prescription> getAll();

    Prescription Create( Prescription prescription);

    Prescription Update( Prescription prescription);

    void Delete(Long id);
}
