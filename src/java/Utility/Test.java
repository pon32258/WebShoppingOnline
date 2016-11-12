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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Witchapon Kaptop
 */
public class Test {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {

//        Connection conn = ConnectionBuilder.getConnection();
//        String sql = "SELECT * FROM item i "
//                    + "JOIN itemType it ON i.typeId = it.typeId "
//                    + "JOIN brand b ON i.brandId = b.brandId "
//                    + "WHERE LOWER(i.itemName) LIKE ? OR LOWER(it.typeName) LIKE ? "
//                    + "OR LOWER(b.brandName) LIKE ?";
//        try {
//            PreparedStatement pstm = conn.prepareStatement(sql);
//            pstm.setString(1, "");
//            pstm.setString(2, "%Computer%");
//            pstm.setString(3, "");
//            ResultSet rs = pstm.executeQuery();
//            if (rs.next()) {
//                System.out.println(rs.getString("itemName"));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Test.class.getName()).log(Level.SEVERE, null, ex);
//        }
//          List<Product> products = Product.getProductByName("", "");
//          System.out.println(products.size());

    }
}
