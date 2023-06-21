/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.Service;

import com.javaweb.Entity.Menus;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author HOME
 */
public class MenuService {
    private static ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
    private static JdbcTemplate t = (JdbcTemplate) ctx.getBean("t");
    
    public static List<Menus> getMenu() {
        return t.query("Select * from menus", (rs, num) -> {
            Menus menu = new Menus();
            menu.setId(rs.getInt("id"));
            menu.setName(rs.getString("name"));
            menu.setUrl(rs.getString("url"));
            return menu;
        });
    }
}
