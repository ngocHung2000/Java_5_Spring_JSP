package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "nhan_vien")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ho_ten")
    private String ho_ten;
    @Column(name = "gioi_tinh")
    private String gioi_tinh;
    @Column(name = "ngay_sinh")
    private Date ngay_sinh;
    @Column(name = "dia_chi")
    private String dia_chi;
    @Column(name = "mat_khau")
    private String mat_khau;
    @Column(name = "trangthai")
    private Byte trangthai;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cuahang_id")
    private Store store;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "chucvu_id")
    private JobTitle jobTitle;
    @OneToMany(mappedBy="employee")
    private List<Invoice> invoices;
    @OneToMany(mappedBy="employee")
    private List<Order> orders;
}
