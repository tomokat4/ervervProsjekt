package com.example.springbootbackend.repository;

import com.example.springbootbackend.model.Aktivitetslogg;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AktivitetsloggRepository extends JpaRepository<Aktivitetslogg, Double> {
    //gets all crud db methods
}
