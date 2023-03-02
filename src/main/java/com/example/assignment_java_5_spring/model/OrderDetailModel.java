package com.example.assignment_java_5_spring.model;

import com.example.assignment_java_5_spring.entity.Order;
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
public class OrderDetailModel {
    private int id;

    private int so_luong;

    private Double don_gia;

    private Double don_gia_khi_gia;

    private Order order;

    private ProductDetail productDetail;
}
