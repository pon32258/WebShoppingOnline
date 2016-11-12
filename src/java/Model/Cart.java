/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author frest
 */
public class Cart implements Serializable {
    Map<Integer,LineItem> items = null ;

    public Cart() {
        items = new HashMap<>();
    }
    
    public int getSize() {
        return items.size() ;
    }
    
    public LineItem getItem(int prodId) {
        return items.get(prodId) ;
    }
    
    public void addItem(int prodId) {
        LineItem lit = items.get(prodId) ;
        if (lit == null) {
            items.put(prodId, new LineItem(prodId,1));
        } else {
            lit.setQuantity(lit.getQuantity()+1);
        }
    }
    
    public void updateItem(int productId, int qty) {
        LineItem lit = items.get(productId) ;
        if (lit == null) {
            items.put(productId, new LineItem(productId, qty));
        } else {
            lit.setQuantity(qty);
        }
    }

    public void remove(int prodId) {
        items.remove(prodId) ;
    }
    
    public double getTotalPrice() {
        double totalPrice = 0 ;
        for(LineItem lit : items.values()) {
            totalPrice += lit.getTotal() ;
        }
        return totalPrice;
    }

    public Map<Integer, LineItem> getItems() {
        return items;
    }

    public void setItems(Map<Integer, LineItem> items) {
        this.items = items;
    }

    public static class LineItem implements Serializable{
        Product prod;
        int quantity  ;
        double total ;

        public Product getProduct() {
            return prod;
        }

        public void setProduct(Product p) {
            this.prod = p;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
            calculateTotal();
        }

        public double getTotal() {
            return total;
        }

        public void setTotal(double total) {
            this.total = total;
        }
       
        public LineItem(int prodId, int qty) {
            quantity = qty ;
            prod = Product.getProductById(prodId);
            calculateTotal();
        }
        
        private void calculateTotal() {
            total = prod.getPrice() * quantity  ;
        }
    }
}
