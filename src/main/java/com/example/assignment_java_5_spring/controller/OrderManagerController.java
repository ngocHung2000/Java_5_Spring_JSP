package com.example.assignment_java_5_spring.controller;

import com.example.assignment_java_5_spring.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OrderManagerController {

    @Autowired
    OrderService orderService;
    public OrderManagerController() {

    }

    @GetMapping("/order-manager/show")
    public String show(Model m){
        m.addAttribute("lst",orderService.getALl());

        m.addAttribute("view","Admin/OrderManager.jsp");

        return "index";
    }

    @GetMapping("/order-manager/search")
    public String search(Model m,@RequestParam("txt") String txt,
                         @RequestParam("status") String status){
        m.addAttribute("lst",orderService.search(Byte.parseByte(status),txt));

        m.addAttribute("view","Admin/OrderManager.jsp");

        return "index";
    }
}
