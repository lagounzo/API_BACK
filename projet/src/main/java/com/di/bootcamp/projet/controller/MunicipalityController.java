package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Municipality;
import com.di.bootcamp.projet.service.MunicipalityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/municipality")
public class MunicipalityController {
    @Autowired
    MunicipalityService municipalityService;


    @GetMapping("show")
    public List<Municipality> getAll(){
        return municipalityService.getAll();
    }

    @PostMapping("create")
    public Municipality Create(@RequestBody Municipality municipality){
        return municipalityService.Create( municipality);
    }
    @PutMapping("update")
    public Municipality Update(@RequestBody Municipality municipality) {
        return municipalityService.Update(municipality);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        municipalityService.Delete(id);
    }
}
