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
import lk.phoenixairline.dao.FlightBookingDao;
import lk.phoenixairline.dao.PaymentDao;
import lk.phoenixairline.model.Payment;

/**
 *
 * @author Hash
 */
@WebServlet(name = "PaymentServelet", urlPatterns = {"/PaymentServelet"})
public class PaymentServelet extends HttpServlet {

    
    private PaymentDao paymentDao;
    
    public void init() {
	paymentDao = new PaymentDao();
    }
    
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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
               String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		Integer passportNumber =Integer.parseInt(request.getParameter("passportNumber"));
		String city = request.getParameter("city");
		String states = request.getParameter("states");
		String zipcode = request.getParameter("zipcode");
                String nameOnCard = request.getParameter("nameOnCard");
                String creditCardNumber = request.getParameter("creditCardNumber");
                String expMonth = request.getParameter("expMonth");
                String expYear = request.getParameter("expYear");
                String cvv = request.getParameter("cvv");
                
                Payment payment=new Payment(1, fullName, email, passportNumber, city, states, zipcode, nameOnCard, Integer.parseInt(creditCardNumber), expMonth, expYear, cvv);
                
                paymentDao.insert(payment);
                
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
