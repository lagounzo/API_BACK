package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Consultation;
import com.di.bootcamp.projet.service.ConsultationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/consultation")

public class ConsultationController {

    @Autowired
    ConsultationService consultationService;


    @GetMapping("show")
    public List<Consultation> getAll() {
        return consultationService.getAll();
    }

    @PostMapping("create")
    public Consultation Create(@RequestBody Consultation consultation) {
        return consultationService.Create(consultation);
    }

    @PutMapping("update")
    public Consultation Update(@RequestBody Consultation consultation) {
        return consultationService.Update(consultation);
    }

    @DeleteMapping({"id"})
    public void Delete(Long id) {
        consultationService.Delete(id);
    }
}
