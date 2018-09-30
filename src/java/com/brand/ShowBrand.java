
package com.brand;

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

@WebServlet(name = "ShowBrand", urlPatterns = {"/ShowBrand"})
public class ShowBrand extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
         PrintWriter out = response.getWriter();
        try{ 
            Statement st = DbConnect.getConnection();
            ResultSet rs = st.executeQuery("select * from brand");
            while(rs.next()){
                out.print("<tr>");
                out.print("<td>"+ rs.getString("brand_id") +"</td>");
                out.print("<td>"+ rs.getString("brand_name") +"</td>");
                out.print("<td><a class='px-3 bg-success'  href='editbrand.jsp?id="+rs.getString("brand_id")+"'>Edit</a></td>");
                out.print("<td><a class='px-3 bg-danger'  onClick='deleteBrand(this)' id="+rs.getString("brand_id")+" '>Delete</a></td>");
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

}
