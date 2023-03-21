package com.di.bootcamp.projet.repository;

import com.di.bootcamp.projet.entity.BloodDonation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BloodDonationRepository extends JpaRepository<BloodDonation,Long> {
}
