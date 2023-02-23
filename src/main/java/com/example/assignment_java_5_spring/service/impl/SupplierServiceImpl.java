package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.ProductCategory;
import com.example.assignment_java_5_spring.entity.Supplier;
import com.example.assignment_java_5_spring.model.ProductCategoryModel;
import com.example.assignment_java_5_spring.model.SupplierModel;
import com.example.assignment_java_5_spring.repository.SupplierRepository;
import com.example.assignment_java_5_spring.service.ProductDetailService;
import com.example.assignment_java_5_spring.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    private SupplierRepository supplierRepository;

    public SupplierServiceImpl() {
    }

    @Override
    public List<SupplierModel> getALl() {
        List<SupplierModel> data = new ArrayList<>();
        for (Supplier x : supplierRepository.findAll()) {
            data.add(new SupplierModel(x.getId(),x.getMa(),x.getTen()));
        }
        return data;
    }

}
