/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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

    public Product(){
    
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
    
    public static List<Product> getProductByName(String word,String type, Connection con) {
        List<Product> products = new ArrayList<Product>();
        try {
            PreparedStatement ppstm = con.prepareStatement("SELECT * FROM product p"
                    + "JOIN productType pt ON p.typeId = pt.typeId "
                    + "WHERE LOWER(p.prodName) LIKE ? OR LOWER(pt.typeName) LIKE ?");
            ppstm.setString(1, "%"+word.toLowerCase()+"%");
            ppstm.setString(2, "%"+type.toLowerCase()+"%");
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

    public static Product getProductById(int prodId, Connection connection) {
        Product prod = null;
        try {
            PreparedStatement ppstm = connection.prepareStatement("SELECT * FROM product" 
                    + " WHERE prodId = ?");
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
    
    public static void orm(ResultSet rs , Product prod) throws SQLException{
        if(prod == null){
            prod = new Product();
        }
        prod.setProdId(rs.getInt("prodId"));
        prod.setProdName(rs.getString("prodName"));
        prod.setTypeName(rs.getString("typeName"));
        prod.setPrice(rs.getInt("price"));
    }
    
}
