
package com.report;

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

@WebServlet(name = "SalesReport", urlPatterns = {"/SalesReport"})
public class SalesReport extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
        PrintWriter out = response.getWriter();
         try{ 
             String fromdate = request.getParameter("fdate");
             String todate = request.getParameter("tdate");
            Statement st = DbConnect.getConnection();
            ResultSet rs = st.executeQuery("SELECT invoice_no s,invoice_date s,sub_total s,gst s,discount s,net_total, customer_name c from  sales as s, customer as c WHERE c.customer_no = s.customer_no AND  invoice_date BETWEEN '"+fromdate+"' AND LAST_day('"+todate+"')");
            out.print("<tr>");
                out.print("<th>Invoice No</th>");
                out.print("<th>Invoice Date</th>");
                out.print("<th>Customer Name</th>");
                out.print("<th>Sub Total</th>");
                out.print("<th>Gst</th>");
                out.print("<th>Discount</th>");
                out.print("<th>Net Total</th>");
                out.print("</tr>");
            while(rs.next()){
                out.print("<tr>");
                out.print("<td>"+rs.getString(1)+"</td>");
                out.print("<td>"+rs.getString(2)+"</td>");
                out.print("<td>"+rs.getString(7)+"</td>");
                out.print("<td>"+rs.getString(3)+"</td>");
                out.print("<td>"+rs.getString(4)+"</td>");
                out.print("<td>"+rs.getString(5)+"</td>");
                out.print("<td>"+rs.getString(6)+"</td>");
                out.print("</tr>");
            }
         }catch(Exception e){
             System.out.println(e);
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
