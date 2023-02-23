package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.repository.ColorRepository;
import com.example.assignment_java_5_spring.service.ColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
    public Color add(ColorModel obj) {
        return colorRepository.save(new Color(obj.getId(), obj.getMa(),obj.getTen(),null));
    }

    @Override
    public Color findById(Long id) {
        Optional<Color> x = colorRepository.findById(id);
        if (x.isPresent()){
            return x.get();
        }
        return null;
    }

    @Override
    public Color update(ColorModel obj) {
        return colorRepository.save(new Color(obj.getId(), obj.getMa(),obj.getTen(),null));
    }

    @Override
    public void remove(Long id) {
        colorRepository.deleteById(id);
    }

    @Override
    public List<ColorModel> findByName(String name) {
        List<ColorModel> lst = new ArrayList<>();
        List<Color> data = colorRepository.findByName(name);
        if (data!= null) {
            for (Color x : data) {
                lst.add(new ColorModel(x.getId(), x.getMa(), x.getTen()));
            }
            return lst;
        }
        return null;
    }
    @Override
    public Page<Color> getColor(Integer pageNo, Integer size) {
        Pageable pageable = PageRequest.of(pageNo,size);
        return colorRepository.findAll(pageable);
    }

}
