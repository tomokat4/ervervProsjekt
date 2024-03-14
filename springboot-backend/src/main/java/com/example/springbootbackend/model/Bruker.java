package com.example.springbootbackend.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "bruker")
public class Bruker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private double idBruker;

    @Column
    private String fornavn;

    @Column
    private String etternavn;

    @Column
    private boolean jegerStatus;

    @OneToMany(mappedBy = "bruker", cascade = CascadeType.ALL)
    private List<Aktivitetslogg> aktivitetsloggs;

}
