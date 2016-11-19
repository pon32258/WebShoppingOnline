/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Utility;

import int303.Model.Cart;
import int303.Model.Order;
import int303.Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Witchapon Kaptop
 */
public class Test {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        String orderType = "1";
        String customerId = "1";
        Order order = new Order(new java.sql.Date(Calendar.getInstance().getTimeInMillis()), Integer.parseInt(orderType), Integer.parseInt(customerId));
        if(Order.insertOrder(order)==true){
            System.out.println("asd");
        }
        
    }
}
