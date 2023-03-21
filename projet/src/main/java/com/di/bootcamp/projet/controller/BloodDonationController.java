package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.BloodDonation;
import com.di.bootcamp.projet.service.BloodDonationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/bloodDonation")
@CrossOrigin(origins = "http://localhost:4200/")
public class BloodDonationController {
    @Autowired
    BloodDonationService bloodDonationService;

    @GetMapping("show")
    public List<BloodDonation> getAll(){
        return bloodDonationService.getAll();
    }

    @PostMapping("create")
    public BloodDonation Create(@RequestBody BloodDonation bloodDonation){
        return bloodDonationService.Create( bloodDonation);
    }
    @PutMapping("update")
    public BloodDonation Update(@RequestBody BloodDonation bloodDonation) {
        return bloodDonationService.Update(bloodDonation);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        bloodDonationService.Delete(id);
    }
}
