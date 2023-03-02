package com.example.assignment_java_5_spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogInController {
    @GetMapping("/login/show")
    public String show(Model m){
        m.addAttribute("view","LogIn.jsp");
        return "index";
    }
}
