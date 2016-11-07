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
public class Customer {
    private int customerId;
    private String fname;
    private String sname;
    private String email;
    private String address;
    private String tel;
    private String username;
    private String password;
    private String city;
    private String postcode;
    private static final String TABLE_NAME = "customer";
    
    public Customer(){
    
    }

    public Customer(int customerId, String fname, String sname, String email, 
            String address, String tel, String username, String password,String city ,String postcode) {
        this.customerId = customerId;
        this.fname = fname;
        this.sname = sname;
        this.email = email;
        this.address = address;
        this.tel = tel;
        this.username = username;
        this.password = password;
        this.city = city;
        this.postcode = postcode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
    
    public static String getTABLE_NAME() {
        return TABLE_NAME;
    }
    
    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public static List<Customer> getCustomerByName(String word, Connection con) {
        List<Customer> customers = new ArrayList<Customer>();
        try {
            PreparedStatement ppstm = con.prepareStatement("SELECT * FROM " + TABLE_NAME
                    + "WHERE LOWER(fname) LIKE ? OR LOWER(username) LIKE ?");
            ppstm.setString(1, "%"+word.toLowerCase()+"%");
            ppstm.setString(2, "%"+word.toLowerCase()+"%");
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                Customer cus = new Customer();
                orm(rs, cus);
                customers.add(cus);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }

        return customers;
    }

    public static Customer getCustomerById(int customerId, Connection connection) {
        Customer cus = null;
        try {
            PreparedStatement ppstm = connection.prepareStatement("SELECT * FROM " + TABLE_NAME 
                    + " WHERE customerId = ?");
            ppstm.setInt(1, customerId);
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                cus = new Customer();
                orm(rs, cus);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }

        return cus;

    }
    
    public static void orm(ResultSet rs , Customer cus) throws SQLException{
        if(cus == null){
            cus = new Customer();
        }
        cus.setCustomerId(rs.getInt("customerId"));
        cus.setFname(rs.getString("fname"));
        cus.setSname(rs.getString("sname"));
        cus.setEmail(rs.getString("email"));
        cus.setAddress(rs.getString("address"));
        cus.setTel(rs.getString("tel"));
        cus.setUsername(rs.getString("username"));
        cus.setPassword(rs.getString("password"));
        cus.setCity(rs.getString("city"));
        cus.setPostcode(rs.getString("postcode"));
    }
    
    public static boolean insertCustomer(Customer cus, Connection conn) {

        boolean result = false;
        try {           
            String sqlcmd = "INSERT INTO " + TABLE_NAME + "(fname ,"
                    + "sname,email,address,tel,username,password,city,postcode) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sqlcmd);
            pstm.setString(1, cus.getFname());
            pstm.setString(2, cus.getSname());
            pstm.setString(3, cus.getEmail());
            pstm.setString(4, cus.getAddress());
            pstm.setString(5, cus.getTel());
            pstm.setString(6, cus.getUsername());
            pstm.setString(7, cus.getPassword());
            pstm.setString(8, cus.getCity());
            pstm.setString(9, cus.getPostcode());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public static boolean editCustomer(Customer cus, Connection conn) {
        boolean result = false;
        
        try {
            String sql = "UPDATE " + TABLE_NAME + " SET fname=? ,"
                    + "sname=?,email=?,address=?,tel=?,username=?,password=?,"
                    + "city=?,postcode=? WHERE customerId=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, cus.getFname());
            pstm.setString(2, cus.getSname());
            pstm.setString(3, cus.getEmail());
            pstm.setString(4, cus.getAddress());
            pstm.setString(5, cus.getTel());
            pstm.setString(6, cus.getUsername());
            pstm.setString(7, cus.getPassword());
            pstm.setString(8, cus.getCity());
            pstm.setString(9, cus.getPostcode());
            pstm.setInt(10, cus.getCustomerId());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }
    
//    public static boolean editStatusCustomer(Customer cus,Boolean status, Connection conn) {
//        boolean result = false;
//        
//        try {
//            String sql = "UPDATE " + TABLE_NAME + " SET statusId=? WHERE customerId=?";
//            PreparedStatement pstm = conn.prepareStatement(sql);
//            pstm.setBoolean(1, status);
//            pstm.setInt(2, cus.getCustomerId());
//
//            if (pstm.executeUpdate() > 0) {
//                result = true;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return result;
//    }
    
    public static boolean deleteCustomer(Customer cus, Connection conn) {
        boolean result = false;
        
        try {
            String sql = "DELETE FROM "+TABLE_NAME+" WHERE customerId=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1,cus.getCustomerId());
            if(pstm.executeUpdate()>0){
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}
