
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

@WebServlet(name = "PurchaseReport", urlPatterns = {"/PurchaseReport"})
public class PurchaseReport extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
        PrintWriter out = response.getWriter();
         try{ 
             String fromdate = request.getParameter("fdate");
             String todate = request.getParameter("tdate");
            Statement st = DbConnect.getConnection();
             System.out.println(fromdate);
            ResultSet rs = st.executeQuery("SELECT bill_no p,bill_date p,invoice_no p,invoice_date p,gst p, supplier_name c from  supplier as c, purchase as p WHERE c.supplier_no = p.supplier_no AND  invoice_date BETWEEN '"+fromdate+"' AND LAST_day('"+todate+"')");
            out.print("<tr>");
                out.print("<th>Bill No</th>");
                out.print("<th>Bill Date</th>");
                out.print("<th>Supplier Name</th>");
                out.print("<th>Invoice No</th>");
                out.print("<th>Invoice Date</th>");
                out.print("<th>GST</th>");
                out.print("</tr>");
            while(rs.next()){
                out.print("<tr>");
                out.print("<td>"+rs.getString(1)+"</td>");
                out.print("<td>"+rs.getString(2)+"</td>");
                out.print("<td>"+rs.getString(6)+"</td>");
                out.print("<td>"+rs.getString(3)+"</td>");
                out.print("<td>"+rs.getString(4)+"</td>");
                out.print("<td>"+rs.getString(5)+"</td>");
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
