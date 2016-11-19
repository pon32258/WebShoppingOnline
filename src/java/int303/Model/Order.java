/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Model;

import int303.Utility.ConnectionBuilder;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author Witchapon-Pc
 */
public class Order {
    
    private int orderId;
    private Date orderDate; 
    private int orderType;
    private int customerId;

    public Order() {
    }

    public Order(Date orderDate, int orderType, int customerId) {
        this.orderDate = orderDate;
        this.orderType = orderType;
        this.customerId = customerId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getOrderType() {
        return orderType;
    }

    public void setOrderType(int orderType) {
        this.orderType = orderType;
    }
    
    public static int shipmentFee(int orderTypeId){
        int fee = 0;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            PreparedStatement ppstm = conn.prepareStatement("SELECT fee FROM orderType" 
                    + " WHERE orderTypeId = ?");
            ppstm.setInt(1, orderTypeId);
            ResultSet rs = ppstm.executeQuery();
            if (rs.next()) {
                fee = rs.getInt("fee");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fee;
    }
    
    public static boolean insertOrder(Order order) {       
        boolean result = false;
        try {  
            Connection conn = ConnectionBuilder.getConnection();
            String sqlcmd = "INSERT INTO orders(orderDate,orderTypeID,customerId) values(?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sqlcmd);
            pstm.setDate(1, order.getOrderDate());
            pstm.setInt(2, order.getOrderType());
            pstm.setInt(3, order.getCustomerId());

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
    public static boolean insertOrderItem(int itemId,int qty,int price){
        boolean result = false;
        try {  
            Connection conn = ConnectionBuilder.getConnection();
            String sqlcmd = "INSERT INTO orderItem (orderID,itemID,"
                    + "orderQuantity,price) values(?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sqlcmd);
            pstm.setInt(1, getLastOrder());
            pstm.setInt(2, itemId);
            pstm.setInt(3, qty);
            pstm.setInt(4, price);

            if (pstm.executeUpdate() > 0) {
                result = true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
    public static int getLastOrder(){
        int lastId = 0;
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql ="SELECT MAX(orderID) FROM orders ";                
            PreparedStatement pstm =conn.prepareStatement(sql);
            ResultSet rs =pstm.executeQuery();
            if(rs.next()){
                lastId = rs.getInt("MAX(orderID)");
            }     
            conn.close();
        }catch(SQLException ex){
             Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lastId;
    }
}
