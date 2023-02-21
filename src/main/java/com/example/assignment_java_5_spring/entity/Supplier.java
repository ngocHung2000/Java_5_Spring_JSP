package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "nsx")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ten")
    private String ten;
    @OneToMany(mappedBy = "supplier")
    List<ProductDetail> productDetails;
}
