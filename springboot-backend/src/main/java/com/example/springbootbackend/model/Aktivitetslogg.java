package com.example.springbootbackend.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
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

    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private double lognr;

    @Column
    private String dato;

    @Column
    private String aktivitet;

    @Column
    private String programnavn;

    @Column
    private String kommentar;

    @Column
    private String forbund;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JsonIgnore
    @JoinColumn(name = "brukerId")
    private Bruker bruker;


}