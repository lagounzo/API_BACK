package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Prescription;
import com.di.bootcamp.projet.repository.PrescriptionRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class PrescriptionServiceImpl implements PrescriptionService {
    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @Override
    public List<Prescription> getAll() {
        return prescriptionRepository.findAll();
    }

    @Override
    public Prescription Create(Prescription prescription) {
        return prescriptionRepository.save(prescription);
    }

    @Override
    public Prescription Update(Prescription prescription) {
        return prescriptionRepository.save(prescription);
    }

    @Override
    public void Delete(Long id) {
        prescriptionRepository.deleteById(id);

    }
}
