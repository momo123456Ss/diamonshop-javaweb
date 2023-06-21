/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.controllers;

import com.javaweb.Service.Users.HomeImpl;
import javax.annotation.PostConstruct;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HOME
 */
@Controller
public class BaseController {
    HomeImpl _homeservice = new HomeImpl();
    public ModelAndView _mvShare = new ModelAndView("users/index");
    
    @PostConstruct
    public void Init() {
        _mvShare.addObject("menus", _homeservice.getMenu());
    }
}
