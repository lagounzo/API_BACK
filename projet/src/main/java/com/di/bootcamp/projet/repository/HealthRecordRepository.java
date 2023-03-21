package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.HealthRecord;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HealthRecordRepository extends JpaRepository<HealthRecord,Long> {
}
