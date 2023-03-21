package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.Medein;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MedecinRepository extends JpaRepository<Medein,Long> {
}
