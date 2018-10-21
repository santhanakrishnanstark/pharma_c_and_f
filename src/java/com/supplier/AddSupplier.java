
package com.supplier;

import com.dao.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddSupplier", urlPatterns = {"/AddSupplier"})
public class AddSupplier extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
        String supplier_name = request.getParameter("suppliername");
        String supplier_address = request.getParameter("supplieraddress");
        String supplier_contact = request.getParameter("contact");
        String supplier_gst = request.getParameter("gst");
        String brand_id = request.getParameter("brand");
        String category_id = request.getParameter("category");
        try{
            Statement st = DbConnect.getConnection();
            int res = st.executeUpdate("insert into supplier (supplier_name,supplier_address,supplier_contact,supplier_gst) values ('"+supplier_name+"','"+supplier_address+"','"+supplier_contact+"','"+supplier_gst+"') ");
            if(res>=0){
                out.println("New Supplier Added");
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
