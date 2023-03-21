package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Prescription;
import com.di.bootcamp.projet.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/prescription")
public class PrescriptionController {
    @Autowired
    PrescriptionService prescriptionService;

    @GetMapping("show")
    public List<Prescription> getAll() {
        return prescriptionService.getAll();
    }

    @PostMapping("create")
    public Prescription Create(@RequestBody Prescription Prescription) {
        return prescriptionService.Create(Prescription);
    }

    @PutMapping("update")
    public Prescription Update(@RequestBody Prescription prescription) {
        return prescriptionService.Update(prescription);

    }
}
