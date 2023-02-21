package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.repository.ColorRepository;
import com.example.assignment_java_5_spring.service.ColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ColorServiceImpl implements ColorService {
    @Autowired
    private ColorRepository colorRepository;

    public ColorServiceImpl() {

    }

    @Override
    public List<ColorModel> getALl() {
        List<ColorModel> data = new ArrayList<>();
        for (Color x : colorRepository.findAll()) {
            data.add(new ColorModel(x.getId(),x.getMa(),x.getTen()));
        }
        return data;
    }

    @Override
    public String add(ColorModel obj) {
        colorRepository.save(new Color(obj.getId(), obj.getMa(),obj.getTen(),null));
        return "Done";
    }
}
