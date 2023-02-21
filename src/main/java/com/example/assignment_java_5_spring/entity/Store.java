package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "cua_hang")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Store {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ten")
    private String ten;
    @Column(name = "dia_chi")
    private String dia_chi;
    @Column(name = "thanh_pho")
    private String thanh_pho;
    @Column(name = "quoc_gia")
    private String quoc_gia;
    @OneToMany(mappedBy="store")
    private List<Employee> employees;
}
