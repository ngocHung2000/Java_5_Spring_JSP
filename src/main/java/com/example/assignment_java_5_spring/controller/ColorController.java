package com.example.assignment_java_5_spring.controller;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.service.ColorService;
import com.example.assignment_java_5_spring.service.impl.ColorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ColorController {
    @Autowired
    private ColorService colorService;
    public ColorController() {
    }

    @GetMapping("/color/show")
    public String show(Model m){
        m.addAttribute("data_input",new ColorModel());
        m.addAttribute("data",colorService.getALl());
        return "index";
    }

    @PostMapping("/color/add")
    public String add(@ModelAttribute("data_input")ColorModel obj,Model m){
        m.addAttribute("data_input",new ColorModel());
        colorService.add(obj);
        return "redirect:/color/show";
    }
}
