/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Utility.ConnectionBuilder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author frest
 */
public class Product {

    private int prodId;
    private String prodName;
    private String typeName;
    private double price;
    private String brand;
    private String description;

    public Product() {

    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getProdId() {
        return prodId;
    }

    public void setProdId(int prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public static List<Product> getProductByName(String word, String type) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT * FROM item i "
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "WHERE LOWER(i.itemName) LIKE ? AND LOWER(it.typeName) LIKE ? "
                    + "AND LOWER(b.brandName) LIKE ? "
                    + "ORDER BY i.itemName");
            ppstm.setString(1, "%" + word.toLowerCase() + "%");
            ppstm.setString(2, "%" + type.toLowerCase() + "%");
            ppstm.setString(3, "%" + word.toLowerCase() + "%");
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                Product prod = new Product();
                orm(rs, prod);
                products.add(prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public static Product getProductById(int prodId) {
        Product prod = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT * FROM item i"
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "WHERE i.itemId = ?");
            ppstm.setInt(1, prodId);
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                prod = new Product();
                orm(rs, prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prod;
    }
    
    public static List<Product> getProductByType(int typeId){
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectionBuilder.getConnection();
        String sql = "SELECT * FROM item i "
                + "JOIN itemtype it ON i.typeId = it.typeid"
                + "WHERE i.typeId = ?" ;
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, typeId);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product prod = new Product();
                orm(rs,prod);
                products.add(prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    

    public static void orm(ResultSet rs, Product prod) throws SQLException {
        if (prod == null) {
            prod = new Product();
        }
        prod.setProdId(rs.getInt("itemId"));
        prod.setProdName(rs.getString("itemName"));
        prod.setTypeName(rs.getString("typeName"));
        prod.setPrice(rs.getInt("price"));
        prod.setBrand(rs.getString("brandName"));
        prod.setDescription(rs.getString("itemDescription"));
    }

}
