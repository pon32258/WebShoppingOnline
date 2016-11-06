/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;



/**
 *
 * @author Witchapon-Pc
 */
public class Order {
    
    private int orderId;
    private Date orderDate;
    private int companyId;
    private int statusId;
    private String invoiceCode;
    private Date deliverDate;
    private int orderType;
    private int customerId;

    public Order() {
    }

    public Order(int orderId, Date orderDate, int companyId, int statusId, 
            String invoiceCode, Date deliverDate, int orderType, int customerId) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.companyId = companyId;
        this.statusId = statusId;
        this.invoiceCode = invoiceCode;
        this.deliverDate = deliverDate;
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

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getInvoiceCode() {
        return invoiceCode;
    }

    public void setInvoiceCode(String invoiceCode) {
        this.invoiceCode = invoiceCode;
    }

    public Date getDeliverDate() {
        return deliverDate;
    }

    public void setDeliverDate(Date deliverDate) {
        this.deliverDate = deliverDate;
    }

    public int getOrderType() {
        return orderType;
    }

    public void setOrderType(int orderType) {
        this.orderType = orderType;
    }
    
    
}
