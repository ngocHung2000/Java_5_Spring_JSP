package com.example.assignment_java_5_spring.service;

import com.example.assignment_java_5_spring.model.ColorModel;

import java.util.List;

public interface ColorService {
    List<ColorModel>  getALl();
    String add(ColorModel obj);
}
