package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Speciality;
import com.di.bootcamp.projet.repository.SpecialityRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class SpecialityServiceImpl implements SpecialityService{
    @Autowired
    private SpecialityRepository specialityRepository;

    @Override
    public List<Speciality> getAll() {
        return specialityRepository.findAll();
    }

    @Override
    public Speciality Create(Speciality speciality) {
        return specialityRepository.save(speciality);
    }

    @Override
    public Speciality Update(Speciality speciality) {
        return specialityRepository.save(speciality);
    }

    @Override
    public void Delete(Long id) {
        specialityRepository.deleteById(id);

    }
}
