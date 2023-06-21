/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.demo1;

import com.javaweb.Entity.Slides;
import com.javaweb.Service.SlideService;
import java.util.List;

/**
 *
 * @author HOME
 */
public class Run {

    public static void main(String[] args) {
        SlideService.getSlide().forEach(q -> System.out.println(q.getImg()));
        SlideService.getSlide().forEach(q -> System.out.println(q.getCaption()));

        SlideService.getSlide().forEach(q -> System.out.println(q.getContent()));

    }
}
