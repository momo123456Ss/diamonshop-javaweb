/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.controllers;

import com.javaweb.Service.SlideService;
import com.javaweb.Service.Users.HomeImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HOME
 */
@Controller
public class HomeController extends BaseController {

    @RequestMapping(value = {"/", "/trang-chu"})
    public ModelAndView Index() {
        _mvShare.addObject("slides", _homeservice.getSlide());
        _mvShare.addObject("categorys", _homeservice.getCategory());
        _mvShare.addObject("categorys", _homeservice.getProduct());

        return _mvShare;
    }

    @RequestMapping(value = {"/product"})
    public ModelAndView Product() {
        ModelAndView mv = new ModelAndView("users/product");
        return mv;
    }
}
