package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Medein;
import com.di.bootcamp.projet.repository.MedecinRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class MedecinServiceImpl implements MedecinService {
    @Autowired
    private MedecinRepository medecinRepository;

    @Override
    public List<Medein> getAll() {
        return medecinRepository.findAll();
    }

    @Override
    public Medein Create(Medein medein) {
        return medecinRepository.save(medein);
    }

    @Override
    public Medein Update(Medein medein) {
        return medecinRepository.save(medein);
    }

    @Override
    public void Delete(Long id) {
        medecinRepository.deleteById(id);

    }

}
