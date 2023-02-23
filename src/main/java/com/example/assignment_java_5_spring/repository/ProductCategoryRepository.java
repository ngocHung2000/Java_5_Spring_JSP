package com.example.assignment_java_5_spring.repository;

import com.example.assignment_java_5_spring.entity.ProductCategory;
import com.example.assignment_java_5_spring.entity.ProductDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {
}
