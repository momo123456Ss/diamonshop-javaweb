/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.javaweb.Service.Users;

import com.javaweb.Entity.Categorys;
import com.javaweb.Entity.Menus;
import com.javaweb.Entity.Products;
import com.javaweb.Entity.Slides;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HOME
 */
@Service
public interface IHome {
    
    @Autowired
    public List<Slides> getSlide();
    @Autowired
    public List<Categorys> getCategory();
    @Autowired
    public List<Menus> getMenu();
    @Autowired
    public List<Products> getProduct();

}
