/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Controller;

import int303.Model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Witchapon Kaptop
 */
public class UpdateCartServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        String target = request.getParameter("target");
        if (session != null) {
            if (session.getAttribute("CART") == null) {
                session.setAttribute("CART", new Cart());
            }
            Cart cart = (Cart) session.getAttribute("CART");
            String deleteItem = request.getParameter("deleteItem");
            if (deleteItem != null) {
                cart.remove(Integer.parseInt(deleteItem));

            }
            Enumeration<String> items = request.getParameterNames();
            while (items.hasMoreElements()) {
                String x = items.nextElement();
                if (x.charAt(0) == '_') {
                    int pid = Integer.parseInt(x.substring(1));
                    int qty = Integer.parseInt(request.getParameter(x));
                    if (cart.getItem(pid) != null) {
                        cart.updateItem(pid, qty);
                    }
                } else if (x.charAt(0) == '-') {
                    int pid = Integer.parseInt(x.substring(1));
                    int qty = Integer.parseInt(request.getParameter(x));
                    cart.updateQty(pid, qty);
                }
            }

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
