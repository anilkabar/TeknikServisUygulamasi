package com.example.teknikdeneme22.repositories;

import com.example.teknikdeneme22.entities.model.Cihazlar;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ICihazlarRepository extends JpaRepository<Cihazlar,Long> {
    List<Cihazlar> findAllByIsActive(Boolean isActive);

}
