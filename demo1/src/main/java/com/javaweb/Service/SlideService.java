/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.Service;

import com.javaweb.Entity.Slides;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 *
 * @author HOME
 */
@Repository
public class SlideService {
    private static ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
    private static JdbcTemplate t = (JdbcTemplate) ctx.getBean("t");
    
    public static List<Slides> getSlide() {
        return t.query("Select * from slides", (rs, num) -> {
            Slides slide = new Slides();
            slide.setId(rs.getInt("id"));
            slide.setImg(rs.getString("img"));
            slide.setCaption(rs.getString("caption"));
            slide.setContent(rs.getString("content"));
            return slide;
        });
    }
}
