package com.example.assignment_java_5_spring.model;

import com.example.assignment_java_5_spring.entity.Invoice;
import com.example.assignment_java_5_spring.entity.ProductDetail;
import jakarta.persistence.Column;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class InvoiceDetailModel {
    private int id;
    private int so_luong;
    private Double don_gia;
    private Invoice invoice;
    private ProductDetail productDetail;
}
