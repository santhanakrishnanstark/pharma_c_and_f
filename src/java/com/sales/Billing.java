
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
import org.json.JSONObject;

@WebServlet(name = "Billing", urlPatterns = {"/Billing"})
public class Billing extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String array[] = new String[7];
        JSONObject obj = new JSONObject();
        try{
            
            int invno = Integer.parseInt(request.getParameter("invoiceno"));
            Statement st = DbConnect.getConnection();
            ResultSet rs = st.executeQuery("select * from sales where invoice_no = '"+invno+"' ");
            if(rs.next()){
                array[0] = rs.getString(1); array[1] = rs.getString(2);
                array[2] = rs.getString(3); array[3] = rs.getString(4);
                array[4] = rs.getString(5); array[5] = rs.getString(6);
                array[6] = rs.getString(7); 
            }
            
           for(int i=0; i<array.length; i++){
               obj.put(String.valueOf(i), array[i]);
            } 
            out.print(obj);
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
