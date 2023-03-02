package com.example.assignment_java_5_spring.service.impl;

import com.example.assignment_java_5_spring.entity.Color;
import com.example.assignment_java_5_spring.entity.Order;
import com.example.assignment_java_5_spring.model.ColorModel;
import com.example.assignment_java_5_spring.model.OrderModel;
import com.example.assignment_java_5_spring.repository.ColorRepository;
import com.example.assignment_java_5_spring.repository.OrderRepository;
import com.example.assignment_java_5_spring.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Override
    public List<OrderModel> getALl() {
        List<OrderModel> data = new ArrayList<>();
        for (Order x : orderRepository.findAll()) {
            data.add(new OrderModel(x.getId(),x.getMa(),x.getNgay_tao(),x.getNgay_thanh_toan(),x.getTen_nguoi_nhan(),x.getDia_chi(),x.getSdt(),x.getTinh_trang(),x.getCustomer(),x.getEmployee()));
        }
        return data;
    }

    @Override
    public Order add(OrderModel x) {
        return orderRepository.save(new Order(x.getId(),x.getMa(),x.getNgay_tao(),x.getNgay_thanh_toan(),x.getTen_nguoi_nhan(),x.getDia_chi(),x.getSdt(),x.getTinh_trang(),x.getCustomer(),x.getEmployee(),null));
    }

    @Override
    public Order findById(Long id) {
        Optional<Order> x = orderRepository.findById(id);
        if (x.isPresent()){
            return x.get();
        }
        return null;
    }

    @Override
    public List<OrderModel> search(byte status, String txt) {
        List<OrderModel> data = this.getALl();
        List<OrderModel> lst = new ArrayList<>();
        if(txt==null){
            for (OrderModel x: data) {
                if(status==x.getTinh_trang()){
                    System.out.println(x);
                    lst.add(x);
                }
            }
            return lst;
        }
        for (OrderModel x: data) {
            if(status==x.getTinh_trang()&&x.getCustomer().getHo_ten().contains(txt)){
                lst.add(x);
                System.out.println(x);
            }
        }
        return lst;
    }
}
