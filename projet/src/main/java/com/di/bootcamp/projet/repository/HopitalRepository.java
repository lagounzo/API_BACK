package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.Hopital;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HopitalRepository extends JpaRepository<Hopital,Long> {
}
