package com.example.teknikdeneme22.entities.model;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.DatabindException;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Cihazlar{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //birincil anahtar belirler
    private Long id;
    private  String marka;
    private String model;
    private String isletimSistemi;
    private String seriNumarasi;
    private String sikayet;
    private Boolean isActive;


    private Date eklenmeTarihi;

    private Date tamamlanmaTarihi;


}
