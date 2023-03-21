package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Hopital;
import com.di.bootcamp.projet.repository.HopitalRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor

public class HopitalServiceImpl implements HopitalService{
    @Autowired
    private HopitalRepository hopitalRepository;
    @Override
    public List<Hopital> getAll() {
        return hopitalRepository.findAll();
    }

    @Override
    public Hopital Create(Hopital hopital) {
        return hopitalRepository.save(hopital);
    }

    @Override
    public Hopital Update(Hopital hopital) {
        return hopitalRepository.save(hopital);
    }
    @Override
    public void Delete(Long id) {
        hopitalRepository.deleteById(id);
    }
}
