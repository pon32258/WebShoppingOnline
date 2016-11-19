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

    public Order(int orderId, Date orderDate, int orderType, int customerId) {
        this.orderId = orderId;
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
}
