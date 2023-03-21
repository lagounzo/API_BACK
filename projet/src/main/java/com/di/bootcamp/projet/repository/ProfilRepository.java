package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.Profil;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ProfilRepository extends JpaRepository<Profil,Long> {
    public Optional<Profil> findProfilByEmailAndPassword(String email, String password);
}
