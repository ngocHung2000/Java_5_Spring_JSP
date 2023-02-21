package com.example.assignment_java_5_spring.repository;

import com.example.assignment_java_5_spring.entity.Color;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ColorRepository extends JpaRepository<Color,Long> {

}
