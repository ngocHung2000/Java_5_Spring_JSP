package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "chi_tiet_san_pham")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "nam_bao_hanh")
    private int nam_bao_hanh;
    @Column(name = "mo_ta")
    private String mo_ta;
    @Column(name = "so_luong_ton")
    private int so_luong_ton;
    @Column(name = "gia_nhap")
    private Double gia_nhap;
    @Column(name = "gia_ban")
    private Double gia_ban;
    @Column(name = "img")
    private String img;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sanpham_id")
    private Product product;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "nsx_id")
    private Supplier supplier;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "mausac_id")
    private Color color;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "dongsanpham_id")
    private ProductCategory productCategory;
    @OneToMany(mappedBy = "productDetail")
    private List<InvoiceDetail> invoiceDetails;
    @OneToMany(mappedBy = "productDetail")
    private List<OrderDetail> orderDetails;

}
