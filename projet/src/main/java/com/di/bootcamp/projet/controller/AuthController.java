package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Profil;
import com.di.bootcamp.projet.repository.RoleProfilRepository;
import com.di.bootcamp.projet.service.ProfilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("auth")
public class AuthController {

    @Autowired
    private ProfilService profilService;
    @Autowired

    @PostMapping("/login")
    public Profil login(@RequestBody Profil profil){
        return profilService.login( profil);
    }


}
