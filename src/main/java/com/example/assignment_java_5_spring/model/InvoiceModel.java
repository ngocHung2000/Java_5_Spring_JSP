package com.example.assignment_java_5_spring.model;

import com.example.assignment_java_5_spring.entity.Customer;
import com.example.assignment_java_5_spring.entity.Employee;
import jakarta.persistence.Column;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class InvoiceModel {
    private int id;

    private String ma;

    private Date ngay_tao;

    private Date ngay_thanh_toan;

    private Date ngay_ship;

    private Date ngay_nhan;

    private byte tinh_trang;

    private String ten_nguoi_nhan;

    private String dia_chi;

    private String sdt;

    private Employee employee;

    private Customer customer;
}
