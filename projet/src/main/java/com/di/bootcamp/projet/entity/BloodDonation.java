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
@Table(name = "bloodDonation")
public class BloodDonation {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private long id_bloodDonation;
        @Column(name = "donation_date", length = 250 )
        private Date donation_date;

        @Column(name = "bloodGroup", length = 250 )
        private String blood_group;
        @Column(name = "symptoms", length = 250 )
        private String symptoms;


        @Column(name = "created_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
        @Temporal(TemporalType.TIMESTAMP)
        private Date createdAt;
        @Column(name = "updated_at", columnDefinition = "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
        @Temporal(TemporalType.TIMESTAMP)
        private Date updatedAt;
    
}
