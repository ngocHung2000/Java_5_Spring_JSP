package com.example.assignment_java_5_spring.model;

import jakarta.persistence.Column;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ColorModel {
    private int id;
    private String ma;
    private String ten;
}
