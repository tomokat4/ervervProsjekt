package com.example.springbootbackend.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "aktivitetslogg")
public class Aktivitetslogg {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private double idBruker;

    @Column
    private String fornavn;

    @Column
    private String etternavn;

    @Column
    private boolean jegerStatus;

}