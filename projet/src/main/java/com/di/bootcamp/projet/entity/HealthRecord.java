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
@Table(name = "healthRecord")
public class HealthRecord {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id_healthRecord;
    @Column(name = "size", length = 250 )
    private Double size;
    @Column(name = "weight", length = 250 )
    private Double weight;
    @Column(name = "bloodGroup", length = 250 )
    private String bloodGroup;
    @Column(name = "allergy", length = 250 )
    private String allergy;
    @Column(name = "medicalHistory_Health", length = 250 )
    private String medicalHistoryHealth;
    @Column(name = "vaccination", length = 250 )
    private String vaccination;


    @Column(name = "created_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @Column(name = "updated_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    
}
