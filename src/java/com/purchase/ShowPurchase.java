
package com.purchase;

import com.dao.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ShowPurchase", urlPatterns = {"/ShowPurchase"})
public class ShowPurchase extends HttpServlet {
       PrintWriter out ;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
          out = response.getWriter();
        try{ 
            Statement st = DbConnect.getConnection();
            ResultSet rs = st.executeQuery("select * from purchase");
            while(rs.next()){
                out.print("<tr>");
                out.print("<td>"+ rs.getString("bill_no") +"</td>");
                out.print("<td>"+ rs.getString("bill_date") +"</td>");
               out.print("<td>"+ rs.getString("invoice_no") +"</td>");
                out.print("<td>"+ rs.getString("invoice_date") +"</td>");
                getSupplierName(rs.getString("supplier_no"));
                out.print("<td>"+ rs.getString("sub_total") +"</td>");
                out.print("<td>"+ rs.getString("gst") +"</td>");
                out.print("<td>"+ rs.getString("discount") +"</td>");
                out.print("<td>"+ rs.getString("net_total") +"</td>");
                //out.print("<td><a class='px-3 bg-success'  href='editproduct.jsp?id="+rs.getString("product_id")+"'>Edit</a></td>");
                out.print("<td><a class='px-3 bg-danger'  onClick='deletePurchase(this)' id="+rs.getString("bill_no")+" '>Delete</a></td>");
                out.print("</tr>");
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

    private void getSupplierName(String string) {
        try { 
            String supplier_name=null;
            Statement st = DbConnect.getConnection();
            ResultSet res = st.executeQuery("select supplier_name from supplier where supplier_no="+Integer.parseInt(string)+" ");
            if(res.next()){ supplier_name = res.getString("supplier_name"); } 
            out.print("<td>"+ supplier_name +"</td>");
        } catch (SQLException ex) {
            Logger.getLogger(ShowPurchase.class.getName()).log(Level.SEVERE, null, ex);
        }
                
    }

}
