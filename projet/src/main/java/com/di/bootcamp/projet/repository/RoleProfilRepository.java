package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.RoleProfil;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleProfilRepository extends JpaRepository<RoleProfil,Long> {
}
