/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Model;

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
 * @author Witchapon-Pc
 */
public class Company {
    
    private int companyId;
    private String companyName;
    private String companyAddress;
    private String companyTel;
    private boolean statusId;
    private static final String TABLE_NAME = "company";
    
    public Company() {
        
    }
    
    public Company(int companyId, String companyName, String companyAddress, String companyTel, boolean statusId) {
        this.companyId = companyId;
        this.companyName = companyName;
        this.companyAddress = companyAddress;
        this.companyTel = companyTel;
        this.statusId = statusId; 
    }

    public static String getTABLE_NAME() {
        return TABLE_NAME;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getCompanyTel() {
        return companyTel;
    }

    public void setCompanyTel(String companyTel) {
        this.companyTel = companyTel;
    }

    public boolean isStatusId() {
        return statusId;
    }

    public void setStatusId(boolean statusId) {
        this.statusId = statusId;
    }
    
    public static List<Company> getCompanyByName(String word, Connection con) {
        List<Company> companies = new ArrayList<Company>();
        try {
            PreparedStatement ppstm = con.prepareStatement("SELECT * FROM " + TABLE_NAME
                    + "WHERE LOWER(companyName) LIKE ?");
            ppstm.setString(1, "%"+word.toLowerCase()+"%");
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                Company cp = new Company();
                orm(rs, cp);
                companies.add(cp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Company.class.getName()).log(Level.SEVERE, null, ex);
        }

        return companies;
    }

    public static Company getCompanyById(int companyId, Connection connection) {
        Company cp = null;
        try {
            PreparedStatement ppstm = connection.prepareStatement("SELECT * FROM " + TABLE_NAME 
                    + " WHERE companyId = ?");
            ppstm.setInt(1, companyId);
            ResultSet rs = ppstm.executeQuery();
            while (rs.next()) {
                cp = new Company();
                orm(rs, cp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Company.class.getName()).log(Level.SEVERE, null, ex);
        }

        return cp;

    }
    
    public static void orm(ResultSet rs , Company cp) throws SQLException{
        if(cp == null){
            cp = new Company();
        }
        cp.setCompanyId(rs.getInt("companyId"));
        cp.setCompanyName(rs.getString("companyName"));
        cp.setCompanyAddress(rs.getString("companyAddress"));
        cp.setCompanyTel(rs.getString("companyTel"));
    }
    
    public static boolean insertCompany(Company cp ,Connection con){
        
        boolean result = false;
        
        try{
            String sql = "INSERT INTO "+TABLE_NAME+" (companyName,companyAddress,companyTel) VALUES (?,?,?)" ;
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, cp.getCompanyName());
            pstm.setString(2, cp.getCompanyAddress());
            pstm.setString(3, cp.getCompanyTel());
            
            if(pstm.executeUpdate()>0){
                result = true;
            }else{
                result  = false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Company.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
   
    public static boolean editCompany(Company cp , Connection con){
        boolean result = false ;
        
        try{
            String sql = "UPDATE "+TABLE_NAME+" SET companyName=? ,"
                    + "companyAddress=? , companyTel=? WHERE companyId = ?";
            PreparedStatement pstm  = con.prepareStatement(sql);
            pstm.setString(1, cp.getCompanyName());
            pstm.setString(2, cp.getCompanyAddress());
            pstm.setString(3, cp.getCompanyTel());
            pstm.setInt(4, cp.getCompanyId());
            if(pstm.executeUpdate()>0){
                result = true;
            }else{
                result = false ;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Company.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
    public static boolean editStatusCompany(Company cp, Boolean status, Connection conn) {
        boolean result = false;
        
        try {
            String sql = "UPDATE " + TABLE_NAME + " SET statusId=? WHERE companyId=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setBoolean(1, status);
            pstm.setInt(2, cp.getCompanyId());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }
    public static boolean deleteCompany(Company cp, Connection conn) {
        boolean result = false;
        
        try {
            String sql = "DELETE FROM "+TABLE_NAME+" WHERE companyId=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1,cp.getCompanyId());
            if(pstm.executeUpdate()>0){
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}
