package com.example.assignment_java_5_spring.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "hoa_don")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Invoice {

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
    @Column(name = "ngay_ship")
    private Date ngay_ship;
    @Column(name = "ngay_nhan")
    private Date ngay_nhan;
    @Column(name = "tinh_trang")
    private byte tinh_trang;
    @Column(name = "ten_nguoi_nhan")
    private String ten_nguoi_nhan;
    @Column(name = "dia_chi")
    private String dia_chi;
    @Column(name = "sdt")
    private String sdt;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "nhanvien_id")
    private Employee employee;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "khachhang_id")
    private Customer customer;
    @OneToMany(mappedBy="invoice")
    private List<InvoiceDetail> invoiceDetails;
}
