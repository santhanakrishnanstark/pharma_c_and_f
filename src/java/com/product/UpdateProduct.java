
package com.product;

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


@WebServlet(name = "UpdateProduct", urlPatterns = {"/UpdateProduct"})
public class UpdateProduct extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        PrintWriter out = response.getWriter();
        try {
            String product_id = request.getParameter("productid");
           String product_name = request.getParameter("productname");
           String product_price = request.getParameter("productprice");
            Statement st = DbConnect.getConnection();
            int res = st.executeUpdate("update product set product_name='"+product_name+"',product_price='"+product_price+"' where product_id='"+product_id+"' ");
            if(res>=0){
                out.println("Product Updated Successfully");
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
