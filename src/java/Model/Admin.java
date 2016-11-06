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
public class Admin {
    private int adminId;
    private String fname;
    private String sname;
    private String email;
    private String address;
    private String tel;
    private String username;
    private String password;
    private static final String TABLE_NAME = "admin";

    public Admin(){
    
    }

    public Admin(int adminId, String fname, String sname, String email, String address,
        String tel, String username, String password) {
        this.adminId = adminId;
        this.fname = fname;
        this.sname = sname;
        this.email = email;
        this.address = address;
        this.tel = tel;
        this.username = username;
        this.password = password;
    }
    
    public static String getTABLE_NAME() {
        return TABLE_NAME;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
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
    
    public static List<Admin> getAdminByName(String word, Connection con) {
        List<Admin> admins = new ArrayList<Admin>();
        try {
            PreparedStatement ppstm = con.prepareStatement("SELECT * FROM " + TABLE_NAME
                    + "WHERE LOWER(fname) LIKE ? OR LOWER(username) LIKE ?");
            ppstm.setString(1, "%"+word.toLowerCase()+"%");
            ppstm.setString(2, "%"+word.toLowerCase()+"%");
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                Admin ad = new Admin();
                orm(rs, ad);
                admins.add(ad);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }

        return admins;
    }

    public static Admin getAdminById(int adminId, Connection connection) {
        Admin ad = null;
        try {
            PreparedStatement ppstm = connection.prepareStatement("SELECT * FROM " + TABLE_NAME 
                    + " WHERE adminId = ?");
            ppstm.setInt(1, adminId);
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                ad = new Admin();
                orm(rs, ad);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ad;

    }
    
    public static void orm(ResultSet rs , Admin ad) throws SQLException{
        if(ad == null){
            ad = new Admin();
        }
        ad.setAdminId(rs.getInt("adminId"));
        ad.setFname(rs.getString("fname"));
        ad.setSname(rs.getString("sname"));
        ad.setEmail(rs.getString("email"));
        ad.setAddress(rs.getString("address"));
        ad.setTel(rs.getString("tel"));
        ad.setUsername(rs.getString("username"));
        ad.setPassword(rs.getString("password"));
    }
    
    public static boolean insertAdmin(Admin ad, Connection conn) {

        boolean result = false;
        try {           
            String sqlcmd = "INSERT INTO " + TABLE_NAME + "(fname ,"
                    + "sname,email,address,tel,username,password) values(?,?,?,?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sqlcmd);
            pstm.setString(1, ad.getFname());
            pstm.setString(2, ad.getSname());
            pstm.setString(3, ad.getEmail());
            pstm.setString(4, ad.getAddress());
            pstm.setString(5, ad.getTel());
            pstm.setString(6, ad.getUsername());
            pstm.setString(7, ad.getPassword());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public static boolean editAdmin(Admin ad, Connection conn) {
        boolean result = false;
        
        try {
            String sql = "UPDATE " + TABLE_NAME + " SET fname=? ,"
                    + "sname=?,email=?,address=?,tel=?,username=?,password=? WHERE customerId=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, ad.getFname());
            pstm.setString(2, ad.getSname());
            pstm.setString(3, ad.getEmail());
            pstm.setString(4, ad.getAddress());
            pstm.setString(5, ad.getTel());
            pstm.setString(6, ad.getUsername());
            pstm.setString(7, ad.getPassword());
            pstm.setInt(8, ad.getAdminId());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }
}
