/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.Entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Admin
 */
@Getter
@Setter
public class Products {

    private long id_product;
    private int id_category;
    private String sizes;
    private String name;
    private double price;
    private int sale;
    private String title;
    private boolean highlight;
    private boolean new_product;
    private String details;
    private long id_color;
    private String name_color;
    private String code_color;
    private String img;
    private Date created_at;
    private Date updated_at;

    public Products() {
        super();
    }

}
