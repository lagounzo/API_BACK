package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.HealthRecord;
import com.di.bootcamp.projet.service.HealthRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/healthRecord")
public class HealthRecordController {

    @Autowired
    HealthRecordService healthRecordService;

    @GetMapping("show")
    public List<HealthRecord> getAll() {
        return healthRecordService.getAll();
    }

    @PostMapping("create")
    public HealthRecord Create(@RequestBody HealthRecord consultation) {
        return healthRecordService.Create(consultation);
    }

    @PutMapping("update")
    public HealthRecord Update(@RequestBody HealthRecord healthRecord) {
        return healthRecordService.Update(healthRecord);
    }

    @DeleteMapping({"id"})
    public void Delete(Long id) {
        healthRecordService.Delete(id);
    }
}
