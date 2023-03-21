package com.di.bootcamp.projet.controller;
import com.di.bootcamp.projet.entity.Profil;
import com.di.bootcamp.projet.model.Profildto;
import com.di.bootcamp.projet.service.ProfilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/profil")
public class ProfilController {
    @Autowired
    ProfilService profilService;
    @GetMapping("show")
    public List<Profil> getAll(){
        return profilService.getAll();
    }

    @PostMapping("create")
    public Profil Create(@RequestBody Profildto profil){
        return profilService.Create( profil);
    }
    @PutMapping("update")
    public Profil Update(@RequestBody Profil profil) {
        return profilService.Update(profil);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        profilService.Delete(id);
    }

}
