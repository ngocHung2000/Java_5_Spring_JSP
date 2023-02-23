package com.example.assignment_java_5_spring.controller;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.service.ColorService;
import com.example.assignment_java_5_spring.service.impl.ColorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ColorController {
    @Autowired
    private ColorService colorService;
    public ColorController() {
    }

    @GetMapping("/color/show")
    public String show(Model m){
//        m.addAttribute("view","index.jsp");
        m.addAttribute("data_input",new ColorModel());
        m.addAttribute("data",colorService.getALl());
        return "index";
//        return "page/ab";
    }

    @PostMapping("/color/add")
    public String add(@ModelAttribute("data_input")ColorModel obj,Model m){
        m.addAttribute("data_input",new ColorModel());
        colorService.add(obj);
        return "redirect:/color/show";
    }

    @GetMapping("/color/edit/{id}")
    public String edit(@ModelAttribute("data_input")ColorModel obj,@PathVariable("id") Long id,Model m){
        m.addAttribute("data_input",colorService.findById(id));
        m.addAttribute("data",colorService.getALl());
        return "index";
    }

    @PostMapping("/color/update/{id}")
    public String update(@ModelAttribute("data_input")ColorModel obj){
        colorService.update(obj);
        return "redirect:/color/show";
    }

    @GetMapping("/color/remove/{id}")
    public String delete( @PathVariable("id") Long id){
        colorService.remove(id);
        return "redirect:/color/show";
    }

    @PostMapping("/color/find")
    public String find(@RequestParam("timKiem") String name, Model m){
        m.addAttribute("data",colorService.findByName(name));
        m.addAttribute("data_input",new ColorModel());

        return "index";
    }

}
