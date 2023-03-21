package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Hopital;

import java.util.List;

public interface HopitalService {
    List<Hopital> getAll();
    Hopital Create(Hopital hopital);
    Hopital Update(Hopital hopital);
    void Delete(Long id);

}
