package com.example.springbootbackend.controller;


import com.example.springbootbackend.model.Bruker;
import com.example.springbootbackend.repository.BrukerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/Brukere")
public class BrukerController {

    @Autowired
    private BrukerRepository brukerRepository;

    @GetMapping
    public List<Bruker> getBrukere(){
        return brukerRepository.findAll();
    }
}
