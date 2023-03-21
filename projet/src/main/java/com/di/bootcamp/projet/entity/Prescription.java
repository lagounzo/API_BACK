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
@Table(name = "prescription")
public class Prescription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id_prescription;

    @Column(name = "prescription_date", length = 250 )
    private Date prescription_date;
    @Column(name = "prescribed_medication", length = 250 )
    private Date prescribed_medication;
    @Column(name = "dosage", length = 250 )
    private String dosage;

    @Column(name = "duration_treatment", length = 250 )
    private int duration_treatment;

    @Column(name = "created_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @Column(name = "updated_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    
}
