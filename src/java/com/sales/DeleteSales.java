
package com.sales;

import com.dao.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteSales", urlPatterns = {"/DeleteSales"})
public class DeleteSales extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
        try { 
           String bill_no = request.getParameter("sid"); 
            Statement st = DbConnect.getConnection();
             //ResultSet rs = st.executeQuery("select invoice_no from sales where bill_no = "+bill_no+" ");
             //if(rs.next()){ invoice_no = rs.getString("invoice_no");  } 
            int res1 = st.executeUpdate("delete from sales_details where invoice_no='"+bill_no+"' ");
            int res = st.executeUpdate("delete from sales where invoice_no='"+bill_no+"' ");
            int res2 = st.executeUpdate("delete from stock where invoice_no='"+bill_no+"' ");
            if(res>=0 && res1>=0 && res2>=0){
                out.println("Sales Deleted ");
            }else{
                out.println("Error while Deleting");
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
