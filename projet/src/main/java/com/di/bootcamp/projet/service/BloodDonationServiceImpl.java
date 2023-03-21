package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.BloodDonation;
import com.di.bootcamp.projet.repository.BloodDonationRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class BloodDonationServiceImpl implements BloodDonationService{
    @Autowired
    public BloodDonationRepository bloodDonationRepository;

    @Override
    public List<BloodDonation> getAll() {
        return bloodDonationRepository.findAll();
    }

    @Override
    public BloodDonation Create(BloodDonation bloodDonation) {
        return bloodDonationRepository.save(bloodDonation);
    }

    @Override
    public BloodDonation Update(BloodDonation bloodDonation) {
        return bloodDonationRepository.save(bloodDonation);
    }

    @Override
    public void Delete(Long id) {
        bloodDonationRepository.deleteById(id);

    }
}
