/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Uti
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *lity;

 * @author Witchapon-Pc
 */
public class ConnectionBuilder {

    public static Connection mainConnection = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:mysql://54.169.211.228:3306/int303_project?zeroDateTimeBehavior=convertToNull", "pon322", "pon322");
        conn.close();
        return conn;
    }
}
