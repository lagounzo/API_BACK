package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Speciality;

import java.util.List;

public interface SpecialityService {
    List<Speciality> getAll();

    Speciality Create(Speciality speciality);

    Speciality Update(Speciality speciality);

    void Delete(Long id);
}
