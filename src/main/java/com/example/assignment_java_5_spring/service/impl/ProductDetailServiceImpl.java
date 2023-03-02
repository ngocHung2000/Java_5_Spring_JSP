package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.entity.ProductDetail;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.model.ProductDetailModel;
import com.example.assignment_java_5_spring.repository.ColorRepository;
import com.example.assignment_java_5_spring.repository.ProductDetailRepository;
import com.example.assignment_java_5_spring.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ProductDetailServiceImpl implements ProductDetailService {

    @Autowired
    private ProductDetailRepository productDetailRepository;

    public ProductDetailServiceImpl() {

    }

    @Override
    public List<ProductDetailModel> getALl() {
        List<ProductDetailModel> data = new ArrayList<>();
        for (ProductDetail x : productDetailRepository.findAll()) {
            System.out.println(x.getId());
                data.add(new ProductDetailModel(
                        x.getId(),
                        x.getNam_bao_hanh(),
                        x.getMo_ta(),
                        x.getSo_luong_ton(),
                        x.getGia_nhap(),
                        x.getGia_ban(),
                        x.getImg(),
                        x.getProduct(),
                        x.getSupplier(),
                        x.getColor(),
                        x.getProductCategory()));
        }
        return data;
    }

    @Override
    public ProductDetail add(ProductDetailModel obj) {
        return productDetailRepository.save(new ProductDetail(
                obj.getId(),
                obj.getNam_bao_hanh(),
                obj.getMo_ta(),
                obj.getSo_luong_ton(),
                obj.getGia_nhap(),
                obj.getGia_ban(),
                obj.getImg(),
                obj.getProduct(),
                obj.getSupplier(),
                obj.getColor(),
                obj.getProductCategory(),
                null,
                null));
    }

    @Override
    public ProductDetail update(ProductDetailModel obj) {
        return productDetailRepository.save(new ProductDetail(
                obj.getId(),
                obj.getNam_bao_hanh(),
                obj.getMo_ta(),
                obj.getSo_luong_ton(),
                obj.getGia_nhap(),
                obj.getGia_ban(),
                obj.getImg(),
                obj.getProduct(),
                obj.getSupplier(),
                obj.getColor(),
                obj.getProductCategory(),
                null,
                null));
    }

    @Override
    public void remove(Long id) {
        productDetailRepository.deleteById(id);
    }

    @Override
    public ProductDetail findById(Long id) {
        Optional<ProductDetail> x = productDetailRepository.findById(id);
        if (x.isPresent()){
            return x.get();
        }
        return null;
    }

}
