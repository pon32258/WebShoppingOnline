/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package int303.Controller;

import int303.Model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author frest
 */
public class ChangePasswordServlet extends HttpServlet {

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
        String customerId = request.getParameter("customerId");
        String email = request.getParameter("email");
        String fname = request.getParameter("fname");
        String sname = request.getParameter("sname");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String postCode = request.getParameter("postcode");
        String tel = request.getParameter("tel");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String oldPassword = request.getParameter("oldpassword");
        String newPassword = request.getParameter("newpassword");
        String confirmPassword = request.getParameter("confirmpassword");
        String target = "/userprofile.jsp";
        String mss = "";
        String color = "";

        int customerId2 = Integer.parseInt(customerId);

        if (oldPassword.equals(password)) {
            if (confirmPassword.equals(newPassword)) {
                Customer user = new Customer(customerId2, fname, sname, email, address, tel, username, newPassword, city, postCode);
                if (Customer.changePassword(user) == true) {
                    mss = "Change Password Successs.";
                    color = "green";
                    request.getSession().setAttribute("user", user);

                } else {
                    color = "red";
                    mss = "Fail to Change Password.";
                }
            } else {
                color = "red";
                mss = "New Password and Confirm Password is not match.";
            }
        } else {
            color = "red";
            mss = "Old Password is Incorrect.";
        }
        request.setAttribute("color", color);
        request.setAttribute("mss", mss);
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
