/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javaweb.Service;

import com.javaweb.Entity.Products;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public class ProductService {

    private static ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
    private static JdbcTemplate t = (JdbcTemplate) ctx.getBean("t");

    public static List<Products> getFeaturedProducts() {
        return t.query(SqlString(), (rs, num) -> {
            Products products = new Products();
            products.setId_product(rs.getLong("id_product"));
            products.setId_category(rs.getInt("id_category"));
            products.setSizes(rs.getString("sizes"));
            products.setName(rs.getString("name"));
            products.setPrice(rs.getDouble("price"));
            products.setSale(rs.getInt("sale"));
            products.setTitle(rs.getString("title"));
            products.setHighlight(rs.getBoolean("highlight"));
            products.setNew_product(rs.getBoolean("new_product"));
            products.setDetails(rs.getString("details"));
            products.setId_color(rs.getLong("id_color"));
            products.setName_color(rs.getString("name_color"));
            products.setCode_color(rs.getString("code_color"));
            products.setImg(rs.getString("img"));
            products.setCreated_at(rs.getDate("created_at"));
            products.setUpdated_at(rs.getDate("updated_at"));
            return products;
        });
    }

    private static String SqlString() {
        StringBuffer sql = new StringBuffer();
        sql.append("SELECT ");
        sql.append("p.id as id_product ");
        sql.append(", p.id_category ");
        sql.append(", p.sizes ");
        sql.append(", p.name ");
        sql.append(", p.price ");
        sql.append(", p.sale ");
        sql.append(", p.title ");
        sql.append(", p.highlight ");
        sql.append(", p.new_product ");
        sql.append(", p.details ");
        sql.append(", c.id as id_color ");
        sql.append(", c.name as name_color ");
        sql.append(", c.code as code_color ");
        sql.append(", c.img ");
        sql.append(", p.created_at ");
        sql.append(", p.updated_at ");
        sql.append("FROM ");
        sql.append("products AS p ");
        sql.append("INNER JOIN ");
        sql.append("colors AS c ");
        sql.append("ON p.id = c.id_product ");
        sql.append("GROUP BY p.id, c.id ");
        sql.append("ORDER BY RAND() ");
        sql.append("LIMIT 9 ");
        return sql.toString();
    }
}
