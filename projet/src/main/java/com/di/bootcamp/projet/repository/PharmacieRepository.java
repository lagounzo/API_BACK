package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.Pharmacie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PharmacieRepository extends JpaRepository<Pharmacie,Long> {
}
