/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.Service;
import com.javaweb.Entity.Categorys;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HOME
 */
@Repository
public class CategoryService {
    private static ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
    private static JdbcTemplate t = (JdbcTemplate) ctx.getBean("t");
    
    public static List<Categorys> getCategory() {
        return t.query("Select * from categorys", (rs, num) -> {
            Categorys category = new Categorys();
            category.setId(rs.getInt("id"));
            category.setName(rs.getString("name"));
            category.setDescription(rs.getString("description"));      
            return category;
        });
    }
}
