package com.example.springbootbackend.repository;

import com.example.springbootbackend.model.Bruker;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface BrukerRepository extends JpaRepository<Bruker, Double> {
    //gets all crud db methods
}
