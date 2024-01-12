package com.example.teknikdeneme22.entities.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data  // getir setir için kullanılır
@Entity //veritabanı nesnesi olduğunu belirtir
@NoArgsConstructor //parametresiz constructor üretir
@AllArgsConstructor  //parametreli constructor üretir
public class Users {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String userName;
    String password;

}
