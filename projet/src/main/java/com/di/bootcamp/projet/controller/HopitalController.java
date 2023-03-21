package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.Hopital;
import com.di.bootcamp.projet.service.HopitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/hopital")
public class HopitalController {
    @Autowired
    HopitalService hopitalService;
    @GetMapping("show")
    public List<Hopital> getAll(){
        return hopitalService.getAll();
    }

    @PostMapping("create")
    public  Hopital Create(@RequestBody Hopital hopital){
        return hopitalService.Create( hopital);
    }
    @PutMapping("update")
    public  Hopital Update(@RequestBody  Hopital  hopital) {
        return hopitalService.Update(hopital);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        hopitalService.Delete(id);
    }
}
