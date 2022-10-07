/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package lk.phoenixairline.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import lk.phoenixairline.dao.CustomerDao;
import lk.phoenixairline.model.Customer;

/**
 *
 * @author Hash
 */
@WebServlet(name = "Customer", urlPatterns = {"/Customer"})
public class CustomerServelet extends HttpServlet {

    

    private CustomerDao customerDao;
    
    public void init() {
	customerDao = new CustomerDao();
    }
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           
            
            
            String name = request.getParameter("customerName");
		String email = request.getParameter("email");
		String passport = request.getParameter("passportNumber");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String mobile = request.getParameter("mobile");
                String password = request.getParameter("password");
                String userRole = request.getParameter("userRole");
                
		Customer customer = new Customer(0,name,email,passport,address,gender,Integer.parseInt(mobile),password,userRole);
            
                customerDao.registerCustomer(customer);
                
                
           RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
            
        }
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
