package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.HealthRecord;

import java.util.List;

public interface HealthRecordService {
    List<HealthRecord> getAll();
    HealthRecord Create(HealthRecord healthRecord);
    HealthRecord Update(HealthRecord healthRecord);
    void Delete(Long id);
}
