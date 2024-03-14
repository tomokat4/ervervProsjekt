package com.example.springbootbackend.controller;


import com.example.springbootbackend.model.Aktivitetslogg;
import com.example.springbootbackend.repository.AktivitetsloggRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/Aktivitetslogger")
public class AktivitetsloggController {

    @Autowired
    private AktivitetsloggRepository aktivitetsloggRepository;

    @GetMapping
    public List<Aktivitetslogg> getAktivitetslogger(){
        return aktivitetsloggRepository.findAll();
    }
}