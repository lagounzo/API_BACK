package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Pharmacie;
import com.di.bootcamp.projet.service.PharmacieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/pharmacie")
public class PharmacieController {
    @Autowired
    PharmacieService pharmacieService;

    @GetMapping("show")
    public List<Pharmacie> getAll(){
        return pharmacieService.getAll();
    }

    @PostMapping("create")
    public  Pharmacie Create(@RequestBody Pharmacie pharmacie){
        return pharmacieService.Create( pharmacie);
    }
    @PutMapping("update")
    public  Pharmacie Update(@RequestBody  Pharmacie pharmacie) {
        return pharmacieService.Update(pharmacie);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        pharmacieService.Delete(id);
    }

}
