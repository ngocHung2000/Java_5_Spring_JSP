package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.entity.ProductCategory;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.model.ProductCategoryModel;
import com.example.assignment_java_5_spring.repository.ColorRepository;
import com.example.assignment_java_5_spring.repository.ProductCategoryRepository;
import com.example.assignment_java_5_spring.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {
    @Autowired
    private ProductCategoryRepository productCategoryRepository;

    public ProductCategoryServiceImpl() {
    }

    @Override
    public List<ProductCategoryModel> getALl() {
        List<ProductCategoryModel> data = new ArrayList<>();
        for (ProductCategory x : productCategoryRepository.findAll()) {
            data.add(new ProductCategoryModel(x.getId(),x.getMa(),x.getTen()));
        }
        return data;
    }
}
