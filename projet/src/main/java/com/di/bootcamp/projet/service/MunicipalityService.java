package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Municipality;

import java.util.List;

public interface MunicipalityService {
    List<Municipality> getAll();
    Municipality Create(Municipality municipality);
    Municipality Update(Municipality municipality);
    void Delete(Long id);
}
