package com.example.assignment_java_5_spring.model;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.entity.Product;
import com.example.assignment_java_5_spring.entity.ProductCategory;
import com.example.assignment_java_5_spring.entity.Supplier;
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
public class ProductDetailModel {

    private int id;

    private int nam_bao_hanh;

    private String mo_ta;

    private int so_luong_ton;

    private Double gia_nhap;

    private Double gia_ban;

    private String img;

    private Product product;

    private Supplier supplier;

    private Color color;

    private ProductCategory productCategory;

}
