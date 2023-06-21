/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.Service.Users;

import com.javaweb.Entity.Categorys;
import com.javaweb.Entity.Menus;
import com.javaweb.Entity.Slides;
import com.javaweb.Service.CategoryService;
import com.javaweb.Service.MenuService;
import com.javaweb.Service.SlideService;
import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

/**
 *
 * @author HOME
 */
@Component
public class HomeImpl implements IHome {
    
    @Override
    public List<Slides> getSlide() {
        return SlideService.getSlide();
    }

    @Override
    public List<Categorys> getCategory() {
        return CategoryService.getCategory();
    }

    @Override
    public List<Menus> getMenu() {
        return MenuService.getMenu();
    }

}
