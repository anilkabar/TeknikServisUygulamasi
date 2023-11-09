package com.example.teknikdestek3.entities;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Devices {
    @Id
    //Birer birer artması için
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String brand;
    private String model;
    private String operatingSystem;
    private String serialNumber;
    private String complaint;

    private boolean status;







}
