package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.Product;
import com.example.assignment_java_5_spring.entity.ProductCategory;
import com.example.assignment_java_5_spring.model.ProductCategoryModel;
import com.example.assignment_java_5_spring.model.ProductModel;
import com.example.assignment_java_5_spring.repository.ProductRepository;
import com.example.assignment_java_5_spring.service.ProductDetailService;
import com.example.assignment_java_5_spring.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;

    public ProductServiceImpl() {
    }

    @Override
    public List<ProductModel> getALl() {
        List<ProductModel> data = new ArrayList<>();
        for (Product x : productRepository.findAll()) {
            data.add(new ProductModel(x.getId(),x.getMa(),x.getTen()));
        }
        return data;
    }
}
