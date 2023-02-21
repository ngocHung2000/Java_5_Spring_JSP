package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "gio_hang")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ngay_tao")
    private Date ngay_tao;
    @Column(name = "ngay_thanh_toan")
    private Date ngay_thanh_toan;
    @Column(name = "ten_nguoi_nhan")
    private String ten_nguoi_nhan;
    @Column(name = "dia_chi")
    private String dia_chi;
    @Column(name = "sdt")
    private String sdt;
    @Column(name = "tinh_trang")
    private byte tinh_trang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "khachhang_id")
    private Customer customer;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "nhanvien_id")
    private Employee employee;
    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetails;
}
