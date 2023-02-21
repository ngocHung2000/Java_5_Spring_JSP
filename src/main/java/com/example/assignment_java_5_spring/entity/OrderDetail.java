package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "gio_hang_chi_tiet")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "so_luong")
    private int so_luong;
    @Column(name = "don_gia")
    private Double don_gia;
    @Column(name = "don_gia_khi_gia")
    private Double don_gia_khi_gia;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "giohangchitiet_giohang")
    private Order order;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "giohangchitiet_chitietsanpham")
    private ProductDetail productDetail;

}
