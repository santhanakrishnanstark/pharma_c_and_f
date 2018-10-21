
package com.customer;

import com.dao.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UpdateCustomer", urlPatterns = {"/UpdateCustomer"})
public class UpdateCustomer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
             PrintWriter out = response.getWriter();
        try { System.out.println("comi");
            String customer_no = request.getParameter("customerno");
            String customer_name = request.getParameter("customername");
            String customer_type = request.getParameter("customertype");
            String customer_address = request.getParameter("customeraddress");
            String customer_contact = request.getParameter("customercontact");
            String customer_gst = request.getParameter("gst");
            Statement st = DbConnect.getConnection(); 
            int res = st.executeUpdate("update customer set customer_name='"+customer_name+"',customer_type='"+customer_type+"',customer_address='"+customer_address+"',customer_contact='"+customer_contact+"',customer_gst='"+customer_gst+"' where customer_no='"+customer_no+"' ");
            if(res>=0){
                out.println("Customer Updated Successfully");
            }else{
                out.println("Error while Updating");
            }
        }catch(SQLException e){
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
