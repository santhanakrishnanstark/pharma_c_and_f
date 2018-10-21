
package com.customer;

import com.dao.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AddCustomer", urlPatterns = {"/AddCustomer"})
public class AddCustomer extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); System.out.println("comin");
        String customer_name = request.getParameter("customername");
        String customer_type = request.getParameter("customertype");
        String customer_address = request.getParameter("customeraddress");
        String customer_contact = request.getParameter("customercontact");
        String customer_gst = request.getParameter("gst");
    
        try{
            Statement st = DbConnect.getConnection();
            int res = st.executeUpdate("insert into customer (customer_name,customer_type,customer_address,customer_contact,customer_gst) values ('"+customer_name+"','"+customer_type+"','"+customer_address+"','"+customer_contact+"','"+customer_gst+"') ");
            if(res>=0){
                out.println("New Customer Added");
            }else{
                out.println("Error with Adding");
            }
            
        }catch(Exception e){
            out.print(e);
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
