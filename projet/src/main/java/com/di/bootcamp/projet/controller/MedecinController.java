package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Medein;
import com.di.bootcamp.projet.service.MedecinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/medecin")

public class MedecinController {
    @Autowired
    MedecinService medecinService;

    @GetMapping("show")
    public List< Medein> getAll(){
        return medecinService.getAll();
    }

    @PostMapping("create")
    public Medein Create(@RequestBody Medein  medein){
        return medecinService.Create(medein);
    }
    @PutMapping("update")
    public  Medein Update(@RequestBody Medein medein) {
        return medecinService.Update(medein);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        medecinService.Delete(id);
    }
}
