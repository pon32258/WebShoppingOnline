/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Model;

import java.sql.Date;



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
    
    
}
