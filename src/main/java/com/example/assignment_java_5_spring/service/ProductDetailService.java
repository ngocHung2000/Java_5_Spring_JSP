package com.example.assignment_java_5_spring.service;

import com.example.assignment_java_5_spring.entity.ProductDetail;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.model.ProductDetailModel;

import java.util.List;

public interface ProductDetailService {
    List<ProductDetailModel> getALl();

    ProductDetail add(ProductDetailModel obj);

    ProductDetail update(ProductDetailModel obj);

    void remove(Long id);

    ProductDetail findByMa(String ma);
}
