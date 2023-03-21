package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.HealthRecord;
import com.di.bootcamp.projet.repository.HealthRecordRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class HealthRecordServiceImpl implements HealthRecordService{
    @Autowired
    private HealthRecordRepository healthRecordRepository;
    @Override
    public List<HealthRecord> getAll() {
        return healthRecordRepository.findAll();
    }

    @Override
    public HealthRecord Create(HealthRecord healthRecord) {
        return healthRecordRepository.save(healthRecord);
    }

    @Override
    public HealthRecord Update(HealthRecord healthRecord) {
        return healthRecordRepository.save(healthRecord);
    }

    @Override
    public void Delete(Long id) {
        healthRecordRepository.deleteById(id);

    }
}
