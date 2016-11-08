/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Witchapon Kaptop
 */
public class Test {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {

        Connection conn = ConnectionBuilder.getConnection();
        String sql = "SELECT * FROM Customer";
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                System.out.println(rs.getString("FName"));
                System.out.println(rs.getString("SName"));
                System.out.println(rs.getString("Emai"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Test.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
