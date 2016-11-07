/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Witchapon-Pc
 */
public class ConnectionBuilder {
    public static Connection mainConnection = null;
    
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Properties property = new Properties();
            property.put("user", "pon322");
            property.put("password", "pon322");
            property.put("useEncoding", "true");
            property.put("characterEncoding", "UTF-8");
            con  =  DriverManager.getConnection("jdbc:mysql://54.169.211.228:3306/int303_project?zeroDateTimeBehavior=convertToNull",property);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex){
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
}
