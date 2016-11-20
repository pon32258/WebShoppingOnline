/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Controller;

import int303.Model.Cart;
import int303.Model.Cart.LineItem;
import int303.Model.Order;
import java.io.IOException;
import java.util.Calendar;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Witchapon Kaptop
 */
public class CheckOutServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderType = Integer.parseInt(request.getParameter("orderType"));
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Cart cart = (Cart) request.getSession().getAttribute("CART");
        String target = "/cart.jsp";
        if (cart != null) {
            Order order = new Order(new java.sql.Date(Calendar.getInstance().getTimeInMillis()), orderType, customerId);
            if (Order.insertOrder(order) == true) {
                boolean addSuccess = false;
                Set<Integer> pid = cart.items.keySet();
                for (int p : pid) {
                    LineItem items = cart.getItem(p);
                    int qty = items.getQuantity();
                    int total = items.getTotal();
                    addSuccess = Order.insertOrderItem(p, qty, total); 
                }
                if(addSuccess==true){
                    int orderId = Order.getLastOrder();
                    request.setAttribute("orderId", orderId);
                    request.setAttribute("oldCART", cart);
                    request.getSession().removeAttribute("CART");
                    target = "/checkout.jsp";                  
                }
            }
        }else{
            request.setAttribute("mss", "Please add product to cart before checkout.");
        }
        getServletContext().getRequestDispatcher(target).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
