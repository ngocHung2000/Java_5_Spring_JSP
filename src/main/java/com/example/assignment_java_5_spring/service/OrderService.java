package com.example.assignment_java_5_spring.service;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.entity.Order;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.model.OrderModel;

import java.util.List;

public interface OrderService {
    List<OrderModel> getALl();

    Order add(OrderModel obj);

    Order findById(Long id);

    List<OrderModel> search(byte status,String txt);

}
