package com.di.bootcamp.projet.controller;

import com.di.bootcamp.projet.entity.RoleProfil;
import com.di.bootcamp.projet.service.RoleProfilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api/roleProfil")
public class RoleProfilController {
    @Autowired
    RoleProfilService roleProfilService;

    @GetMapping("show")
    public List<RoleProfil> getAll(){
        return roleProfilService.getAll();
    }

    @PostMapping("create")
    public RoleProfil Create(@RequestBody RoleProfil roleProfil){
        return roleProfilService.Create(roleProfil);
    }

    @PutMapping("update")
    public RoleProfil Update(@RequestBody RoleProfil roleProfil) {
        return roleProfilService.Update(roleProfil);
    }
    @DeleteMapping({"id"})
    public void Delete(Long id) {
        roleProfilService.Delete(id);
    }


}
