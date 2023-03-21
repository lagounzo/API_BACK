package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.Municipality;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MunicipalityRepository extends JpaRepository<Municipality,Long> {
}
