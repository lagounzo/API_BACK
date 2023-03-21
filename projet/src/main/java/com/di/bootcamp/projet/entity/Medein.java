/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.di.bootcamp.projet.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 *
 * @author N'ZO LAGOU
 */


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@ToString
@Table(name = "medecin")
public class Medein {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id_medein;

    @Column(name = "firstName", length = 250 )
    private String first_name;
    @Column(name = "lastName", length = 250 )
    private String last_name;

    @Column(name = "speciality", length = 250 )
    private String speciality;
    @Column(name = "serviceNumber", length = 250 )
    private String service_number;
    @Column(name = "address_email", length = 250 )
    private String email;

    @Column(name = "contact", length = 250 )
    private String contact;
    @Column(name = "address", length = 250 )
    private String address;


    @Column(name = "created_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @Column(name = "updated_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
}
