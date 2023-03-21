package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.BloodDonation;

import java.util.List;

public interface BloodDonationService {
    List<BloodDonation> getAll();
    BloodDonation Create(BloodDonation bloodDonation);
    BloodDonation Update(BloodDonation bloodDonation);
    void Delete(Long id);
}
