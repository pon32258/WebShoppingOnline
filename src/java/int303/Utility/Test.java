/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Utility;

import int303.Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Witchapon Kaptop
 */
public class Test {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        List<Product> prods = Product.getLastestProduct();
        for (Product p : prods) {
            System.out.println(p.getProdId());
        }
    }
}
