package com.example.assignment_java_5_spring.controller;

import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.model.ProductDetailModel;
import com.example.assignment_java_5_spring.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductManagerController {
    @Autowired
    private ProductDetailService productDetailService;
    @Autowired
    private ColorService colorService;
    @Autowired
    private ProductCategoryService productCategoryService;
    @Autowired
    private ProductService productService;
    @Autowired
    private SupplierService supplierService;
    public ProductManagerController() {
    }

    @GetMapping("/product-manager/show")
    public String show(Model m){
        m.addAttribute("data_input",new ProductDetailModel());
        //data of Product Details
        m.addAttribute("data",productDetailService.getALl());
        m.addAttribute("supplier",supplierService.getALl());
        m.addAttribute("product",productService.getALl());
        m.addAttribute("color",colorService.getALl());
        m.addAttribute("productCategory",productCategoryService.getALl());
        return "Admin/ProductManager";
    }

    @PostMapping("/product-manager/add")
    public String add(@ModelAttribute("data_input") ProductDetailModel obj,Model m){
        m.addAttribute("data_input",new ProductDetailModel());

        productDetailService.add(obj);

        return "redirect:/product-manager/show";
    }

    @GetMapping("/product-manager/edit/{id}")
    public String edit(@ModelAttribute("data_input")ProductDetailModel obj, @PathVariable("id") Long id, Model m){
        m.addAttribute("data_input",productDetailService.findById(id));
        m.addAttribute("data",productDetailService.getALl());
        m.addAttribute("supplier",supplierService.getALl());
        m.addAttribute("product",productService.getALl());
        m.addAttribute("color",colorService.getALl());
        m.addAttribute("productCategory",productCategoryService.getALl());
        return "Admin/ProductManager";
    }

    @GetMapping("/product-manager/remove/{id}")
    public String delete( @PathVariable("id") Long id){
        productDetailService.remove(id);
        return "redirect:/product-manager/show";
    }

    @PostMapping("/product-manager/update/{id}")
    public String update(@ModelAttribute("data_input")ProductDetailModel obj){
        productDetailService.update(obj);
        return "redirect:/product-manager/show";
    }

}
