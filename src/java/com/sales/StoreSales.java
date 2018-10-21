
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

@WebServlet(name = "StoreSales", urlPatterns = {"/StoreSales"})
public class StoreSales extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      boolean result=false;
        try{
            int row = Integer.parseInt(request.getParameter("r"));
            int col = Integer.parseInt(request.getParameter("c"));
            String customer_no=request.getParameter("cid");
            String bill_date=request.getParameter("b_date");
            String sub_total=request.getParameter("stotal");
            String gst=request.getParameter("gstno");
            String discount=request.getParameter("dis");
            String net=request.getParameter("net"); int bill_no=0;
            Statement st = DbConnect.getConnection();
            int res = st.executeUpdate("insert into sales(invoice_date,customer_no,sub_total,gst,discount,net_total) values ('"+bill_date+"','"+customer_no+"','"+sub_total+"','"+gst+"','"+discount+"','"+net+"') ");
            ResultSet r = st.executeQuery("select max(invoice_no) from sales");
            if(r.next()){  bill_no = r.getInt(1); }
            System.out.println("Row : "+row+" Col: "+col);
            for(int i=0; i<=row; i++){
                StringBuilder query= new StringBuilder();
                query.append("insert into sales_details(product_id,product_name,product_price,quantity,invoice_no) values ");
                int id=0,price=0,qtys=0;
                String records[] =  request.getParameterValues("precord["+i+"][]");
                for(int j=0; j<=3; j++){
                    if(j==0){  id=Integer.parseInt(records[j]); }
                    if(j==1){  price=Integer.parseInt(records[j]); }
                    if(j==3){ qtys = Integer.parseInt(records[j]); }
                }
                String pname=null;
                ResultSet rs = st.executeQuery("select product_name from product where product_id='"+id+"'");
                if(rs.next()){ pname= rs.getString("product_name"); }
                String product_name = pname;
                query.append("("+id+",'"+pname+"',"+price+","+qtys+","+bill_no+") ");
                System.out.println(query.toString());
                int rss = st.executeUpdate(query.toString());
                int stockres = st.executeUpdate("INSERT INTO stock( entry_type, invoice_no, invoice_date, product_id, quantity) VALUES ('Sales','"+bill_no+"','"+bill_date+"','"+id+"','"+qtys+"') ");
                if(rss >=0 && stockres >=0){
                    result=true;
                }
            }
            out.print(result);
             
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
