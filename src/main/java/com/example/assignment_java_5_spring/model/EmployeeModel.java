package com.example.assignment_java_5_spring.model;

import com.example.assignment_java_5_spring.entity.JobTitle;
import com.example.assignment_java_5_spring.entity.Store;
import jakarta.persistence.Column;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.util.Date;

public class EmployeeModel {
    private int id;
    private String ma;
    private String ho_ten;
    private String gioi_tinh;
    private Date ngay_sinh;
    private String dia_chi;
    private String mat_khau;
    private Byte trangthai;
    private Store store;
    private JobTitle jobTitle;
}
