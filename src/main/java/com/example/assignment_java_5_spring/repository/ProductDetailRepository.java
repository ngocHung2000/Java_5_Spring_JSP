package com.example.assignment_java_5_spring.repository;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.entity.ProductDetail;
import com.example.assignment_java_5_spring.service.ProductDetailService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailRepository extends JpaRepository<ProductDetail, Long> {

}
