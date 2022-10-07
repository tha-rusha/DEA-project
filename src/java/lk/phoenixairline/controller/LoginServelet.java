/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package lk.phoenixairline.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import lk.phoenixairline.dao.CustomerDao;
import lk.phoenixairline.dao.FlightBookingDao;
import lk.phoenixairline.dao.LoginDao;
import lk.phoenixairline.model.Customer;
import lk.phoenixairline.model.Login;

/**
 *
 * @author Hash
 */
@WebServlet(name = "LoginServelet", urlPatterns = {"/LoginServelet"})
public class LoginServelet extends HttpServlet {

    
    private LoginDao loginDao;
    private CustomerDao customerDao;
    
    public void init() {
	customerDao = new CustomerDao();
        loginDao = new LoginDao();
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
            /* TODO output your page here. You may use following sample code. */
             String userName = request.getParameter("userName");
		String password = request.getParameter("password");
                
             Login login=new Login(userName, password);
             
             String userRole=loginDao.userlogin(login);
             
             
             if(userRole.equalsIgnoreCase("Customer")){
             RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
             }else if(userRole.equalsIgnoreCase("Admin")){
                 
//                 List<Customer>listUser=customerDao.selectAllUsers("Customer");
//                
//            HttpSession httpSession= request.getSession();
//            httpSession.setAttribute("listUser", listUser);
                 
                RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
		dispatcher.forward(request, response);
             }else{
               RequestDispatcher dispatcher = request.getRequestDispatcher("signupandlogin.jsp");
		dispatcher.forward(request, response);
             }
             
             
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
