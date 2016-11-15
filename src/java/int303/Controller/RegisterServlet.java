/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import int303.Model.Customer;

/**
 *
 * @author frest
 */
public class RegisterServlet extends HttpServlet {

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
        String userid = request.getParameter("userid") ;
        String password = request.getParameter("password") ;
        String email = request.getParameter("email") ;
        String fname = request.getParameter("fname") ;
        String sname = request.getParameter("sname") ;
        String address = request.getParameter("address") ;
        String city = request.getParameter("city") ;
        String postcode = request.getParameter("postcode") ;
        String tel = request.getParameter("tel") ;
        String target = "/register.jsp" ;
        String message = "" ;
        String color = "red";
        if (userid != null && password != null && password != null && password != null && password != null 
                && password != null && password != null && password != null && password != null) {
            Customer user = new Customer(fname,sname,email,address,tel,userid,password,city,postcode);
            if (Customer.insertCustomer(user) == true){
                message = "Register Success.";
                color = "green";
            }else{
                 message = "Register fail.";
            }              
        }
        request.setAttribute("message", message);
        request.setAttribute("color", color);
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