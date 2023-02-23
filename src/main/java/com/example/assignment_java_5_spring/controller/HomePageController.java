package com.example.assignment_java_5_spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {
    public HomePageController() {

    }

    @GetMapping("/home-page/show")
    private String show(){
        return "HomePage";
    }

}
