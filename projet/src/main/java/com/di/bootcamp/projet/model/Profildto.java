package com.di.bootcamp.projet.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Profildto {
    private long id_profil;
    private String first_name;
    private String last_name;
    private String email;
    private String gender;
    private String address;
    private String assurance_maladie;
    private String password;
    private Date birthday;

    private String commune;
    private String contact;
}
