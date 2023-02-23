package com.example.assignment_java_5_spring.service;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.model.ColorModel;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ColorService {
    List<ColorModel>  getALl();
    Color add(ColorModel obj);
    Color findById(Long id);
    Color update(ColorModel obj);
    void remove(Long id);
    List<ColorModel> findByName(String name);
    Page<Color> getColor(Integer pageNo, Integer size);

}
