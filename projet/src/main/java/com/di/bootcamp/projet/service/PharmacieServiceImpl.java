package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Pharmacie;
import com.di.bootcamp.projet.repository.PharmacieRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class PharmacieServiceImpl implements PharmacieService{
    @Autowired
    private PharmacieRepository pharmacieRepository;

    @Override
    public List<Pharmacie> getAll() {
        return pharmacieRepository.findAll();
    }

    @Override
    public Pharmacie Create(Pharmacie pharmacie) {
        return pharmacieRepository.save(pharmacie);
    }

    @Override
    public Pharmacie Update(Pharmacie hopitPharmacie) {
        return pharmacieRepository.save(hopitPharmacie);
    }

    @Override
    public void Delete(Long id) {
        pharmacieRepository.deleteById(id);
    }
}
