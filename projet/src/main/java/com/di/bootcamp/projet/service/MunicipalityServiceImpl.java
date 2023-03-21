package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Municipality;
import com.di.bootcamp.projet.repository.MunicipalityRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class MunicipalityServiceImpl implements MunicipalityService{
    @Autowired
    private MunicipalityRepository municipalityRepository;

    @Override
    public List<Municipality> getAll() {
        return municipalityRepository.findAll();
    }

    @Override
    public Municipality Create(Municipality municipality) {
        return municipalityRepository.save(municipality);
    }

    @Override
    public Municipality Update(Municipality municipality) {
        return municipalityRepository.save(municipality);
    }

    @Override
    public void Delete(Long id) {
        municipalityRepository.deleteById(id);
    }
}
