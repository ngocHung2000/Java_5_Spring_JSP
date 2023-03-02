package com.example.assignment_java_5_spring.controller;

import com.example.assignment_java_5_spring.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {
    @Autowired
    ProductDetailService productDetailService;

    public HomePageController() {
    }

    @GetMapping("/home-page/show")
    public String show(Model m){
        m.addAttribute("view","HomePage.jsp");
        m.addAttribute("prNew",productDetailService.getALl().get(productDetailService.getALl().size()-1));
        m.addAttribute("data",productDetailService.getALl());

        return "index";
    }
}
