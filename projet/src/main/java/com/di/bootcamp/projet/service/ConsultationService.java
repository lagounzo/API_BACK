package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Consultation;

import java.util.List;

public interface ConsultationService {
    List<Consultation> getAll();
    Consultation Create(Consultation consultation);
    Consultation Update(Consultation consultation);
    void Delete(Long id);
}
