package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Consultation;
import com.di.bootcamp.projet.repository.ConsultationRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ConsultationServiceImpl implements ConsultationService{
    @Autowired
    private ConsultationRepository consultationRepository;
    @Override
    public List<Consultation> getAll() {
        return consultationRepository.findAll();
    }

    @Override
    public Consultation Create(Consultation consultation) {
        return consultationRepository.save(consultation);
    }

    @Override
    public Consultation Update(Consultation consultation) {
        return consultationRepository.save(consultation);
    }

   @Override
    public void Delete(Long id) {
        consultationRepository.deleteById(id);

    }
}
