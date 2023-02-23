package com.example.assignment_java_5_spring.repository;

import com.example.assignment_java_5_spring.entity.ProductDetail;
import com.example.assignment_java_5_spring.entity.Supplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierRepository extends JpaRepository<Supplier, Long> {
}
