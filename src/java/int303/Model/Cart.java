/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author frest
 */
public class Cart {
    public Map<Integer,LineItem> items = null ;

    public Cart() {
        items = new HashMap<>();
    }
    
    public int getSize() {
        return items.size() ;
    }
    
    public LineItem getItem(int productId) {
        return items.get(productId) ;
    }
    
    public void addItem(int productId) {
        LineItem lit = items.get(productId) ;
        if (lit == null) {
            items.put(productId, new LineItem(productId));
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
    
    public void updateQty(int productId, int qty) {
        LineItem lit = items.get(productId) ;
        if (lit == null) {
            items.put(productId, new LineItem(productId, qty));
        } else {
            lit.setQuantity(lit.getQuantity()+qty);
        }
    }
    
    public void remove(int productId) {
        items.remove(productId) ;
    }
    
    public int getTotalPrice() {
        int totalPrice = 0 ;
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

    public static class LineItem implements Serializable {
        Product product;
        int quantity  ;
        int total ;
        int discount ;

        public Product getProduct() {
            return product;
        }

        public void setProduct(Product p) {
            this.product = p;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
            calculateTotal();
        }

        public int getTotal() {
            return total;
        }

        public void setTotal(int total) {
            this.total = total;
        }

        public int getDiscount() {
            return discount;
        }

        public void setDiscount(int discount) {
            this.discount = discount;
        }
        
        public LineItem(int productId) {
            this(productId, 1) ;
        }
        
        public LineItem(int productId, int qty) {
            quantity = qty ;
            product = Product.getProductById(productId);
            calculateTotal();
        }
        
        private void calculateTotal() {
            total = product.getPrice() * quantity  ;
        }
    }
}
