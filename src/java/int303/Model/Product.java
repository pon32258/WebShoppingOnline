/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Model;

import int303.Utility.ConnectionBuilder;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author frest
 */
public class Product implements Serializable{

    private int prodId;
    private String prodName;
    private String typeName;
    private int price;
    private String brand;
    private String description;
    private int quantity;
    private int totalPrice;

    public Product() {

    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public static List<Product> getProductByWord(String word,String orderBy) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT * FROM item i "
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "WHERE LOWER(i.itemName) LIKE ? "
                    + "ORDER BY i."+orderBy);
            ppstm.setString(1, "%" + word.toLowerCase() + "%");
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
    
    public static List<Product> getProductByType(String type,String orderBy) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT * FROM item i "
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "WHERE LOWER(it.typeName) LIKE ? "
                    + "ORDER BY i."+orderBy);
            ppstm.setString(1, "%" + type.toLowerCase() + "%");
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
    
    public static List<Product> getProductByBrand(String brand,String orderBy) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT * FROM item i "
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "WHERE LOWER(b.brandName) LIKE ? "
                    + "ORDER BY i."+orderBy);
            ppstm.setString(1, "%" + brand.toLowerCase() + "%");
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
            PreparedStatement ppstm = conn.prepareStatement("SELECT * FROM item i "
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
    
    public static List<Product> getProductByOrder(int orderId) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT i.itemName, "
                    + "oi.price,oi.orderQuantity,i.itemId FROM orderItem oi "
                    + "JOIN item i ON oi.itemId = i.itemId "
                    + "WHERE orderId = ? "
                    + "ORDER BY oi.itemId");
            ppstm.setInt(1, orderId);
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                Product prod = new Product();
                orm2(rs, prod);
                products.add(prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public static ResultSet getBrandName(String brand) {
        ResultSet rs = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT brandName FROM brand "
                    + "WHERE brandName LIKE ?");
            ppstm.setString(1, "%"+brand+"%");
            rs = ppstm.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static List<Product> getLastestProduct() {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement st = conn.createStatement();
            String searchQuery = "SELECT * FROM item i "
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "ORDER BY i.itemID desc LIMIT 10";                 
            ResultSet rs  = st.executeQuery(searchQuery); 
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
    
    public static List<Product> getProductByRating() {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement st = conn.createStatement();
            String searchQuery = "SELECT * FROM item i "
                    + "JOIN itemType it ON i.typeId = it.typeId "
                    + "JOIN brand b ON i.brandId = b.brandId "
                    + "JOIN itemRating ir ON i.itemId = ir.itemId "
                    + "ORDER BY ir.totalOrder desc LIMIT 5";                 
            ResultSet rs  = st.executeQuery(searchQuery); 
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
    
    public static boolean updateProdcutRate(int pid,int qty) {
        boolean result = false;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement st = conn.createStatement();
            String searchQuery = "SELECT totalOrder FROM itemRating "
                    + "WHERE itemId = "+pid;                 
            ResultSet rs  = st.executeQuery(searchQuery);
            rs.next();
            int totalOrder = rs.getInt("totalOrder");
            totalOrder = totalOrder+qty;            
            
            PreparedStatement pstm = conn.prepareStatement("Update itemRating SET "
                    + "totalOrder = ? WHERE itemID =?");
            pstm.setInt(1,totalOrder);
            pstm.setInt(2,pid);
            if (pstm.executeUpdate() > 0) {
                result = true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
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
    
    public static void orm2(ResultSet rs, Product prod) throws SQLException {
        if (prod == null) {
            prod = new Product();
        }
        prod.setProdId(rs.getInt("itemId"));
        prod.setProdName(rs.getString("itemName"));
        prod.setTotalPrice(rs.getInt("price"));
        prod.setQuantity(rs.getInt("orderQuantity"));

    }
    
}
