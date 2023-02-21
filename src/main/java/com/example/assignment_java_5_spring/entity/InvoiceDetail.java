package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "hoa_don_chi_tiet")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InvoiceDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "so_luong")
    private int so_luong;
    @Column(name = "don_gia")
    private Double don_gia;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "hoadonchitiet_hoadon")
    private Invoice invoice;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "hoadonchitiet_chitietsanpham")
    private ProductDetail productDetail;
}
