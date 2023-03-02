package com.example.assignment_java_5_spring.controller;

import com.example.assignment_java_5_spring.entity.Order;
import com.example.assignment_java_5_spring.entity.ProductDetail;
import com.example.assignment_java_5_spring.model.OrderModel;
import com.example.assignment_java_5_spring.model.ProductDetailModel;
import com.example.assignment_java_5_spring.service.OrderService;
import com.example.assignment_java_5_spring.service.ProductDetailService;
import com.example.assignment_java_5_spring.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    SupplierService supplierService;

    @Autowired
    OrderService orderService;

    @Autowired
    ProductDetailService productDetailService;
    public ProductController() {
    }

    @GetMapping("/product/show")
    public String show(Model m){
        m.addAttribute("view","Product.jsp");
        m.addAttribute("supplier",supplierService.getALl());
        m.addAttribute("productDetail",productDetailService.getALl());
        return "index";
    }
    @GetMapping("/product/detail/{id}")
    public String productDetail(Model m, @PathVariable("id") Long id){
        m.addAttribute("view","ProductDetail.jsp");
        m.addAttribute("p",productDetailService.findById(id));
        return "index";
    }
    //THem vao gio hang
    @PostMapping("/product/detail/{id}/add")
    public String add(@PathVariable("id") Long id){
        ProductDetail productDetail = productDetailService.findById(id);

        //Create gio hang
        List<OrderModel> orderModel = orderService.getALl();
        if (orderModel==null){
            
        }
        return "";
    }
}
