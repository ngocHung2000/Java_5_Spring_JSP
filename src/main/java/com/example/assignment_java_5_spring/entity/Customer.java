package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "khach_hang")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ho_ten")
    private String ho_ten;
    @Column(name = "ngay_sinh")
    private Date ngay_sinh;
    @Column(name = "sdt")
    private String sdt;
    @Column(name = "dia_chi")
    private String dia_chi;
    @Column(name = "mat_khau")
    private String mat_khau;
    @OneToMany(mappedBy="customer")
    private List<Invoice> invoices;

    @OneToMany(mappedBy="customer")
    private List<Order> orders;
}
