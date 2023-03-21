package com.di.bootcamp.projet.service;

import com.di.bootcamp.projet.entity.Profil;
import com.di.bootcamp.projet.repository.MunicipalityRepository;
import com.di.bootcamp.projet.repository.ProfilRepository;
import com.di.bootcamp.projet.repository.RoleProfilRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ProfilServiceImpl implements ProfilService {

    @Autowired
    private ProfilRepository profilRepository;

    @Autowired
    private MunicipalityRepository miniMunicipalityRepository;



    @Override
    public List<Profil> getAll() {
        return profilRepository.findAll();
    }

    @Override
    public Profil Create(Profil Profil) {
        //return profilRepository.save(Profil);
        return null;
    }

/*    @Override
    public Profil Create(Profildto profildto) {
        Profil profil = new Profil();
        Optional<Municipality> municipality = miniMunicipalityRepository.findById((long) Integer.parseInt(profil.getCommune()));

        if(!municipality.isPresent()) {
            return null;
        }

        profil.setAddress(profildto.getAddress());
        profil.setCommune(municipality.get());

        return profilRepository.save(Profil);*/


    @Override
    public Profil Update(Profil Profil) {
        return profilRepository.save(Profil);
    }

    @Override
    public void Delete(Long id) {
        profilRepository.deleteById(id);

    }

    @Override
    public Profil login(Profil profil) {

        return null;
    }
}
