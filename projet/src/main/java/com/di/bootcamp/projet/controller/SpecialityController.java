package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Speciality;
import com.di.bootcamp.projet.service.SpecialityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/speciality")
public class SpecialityController {
    @Autowired
    SpecialityService specialityService;

    @GetMapping("show")
    public List<Speciality> getAll(){
        return specialityService.getAll();
    }

    @PostMapping("create")
    public Speciality Create(@RequestBody Speciality speciality){
        return specialityService.Create( speciality);
    }

    @PutMapping("update")
    public Speciality Update(@RequestBody  Speciality speciality) {
        return specialityService.Update(speciality);
    }

    @DeleteMapping({"id"})
    public void Delete(Long id) {
        specialityService.Delete(id);
    }
}
