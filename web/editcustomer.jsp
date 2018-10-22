
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.DbConnect"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
       <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
       <link rel="stylesheet" href="css/custom_customer_detalis.css">
    </head>
    <body>
        <div class="col-md-12 mt-3 ml-3 header">
                      <h1 class="d-inline">Pharma C & F Agency</h1>  
            <button id="logoutbtn" class="btn btn-danger mr-5 d-inline float-right">Logout</button>
          
        </div>
        
         <div class="container-fluid p-0">
            <div class="row">
               <div class="col-2 mt-5">
                    <div class="nav flex-column nav-pills"aria-orientation="vertical">
                        <a class="nav-link"  href="Brand_Details.jsp" >Brand Details</a>
                        <a class="nav-link"  href="Category_Details.jsp" >Category Details</a>
                        <a class="nav-link "  href="Product_Details.jsp" >Product Details</a>
                        <a class="nav-link "  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link "  href="Purchase.jsp" >Purchase</a>
                        <a class="nav-link active"  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Sales.jsp" >Sales Details</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                        <a class="nav-link "  href="#" >Report</a>
                    </div>
                </div>    
                <div class="col-2"></div>
                    <div class="col-6">
                    <div class="container mt-5">
                        <h2>Edit Customer</h2>
                        <%
                            String customer_no = request.getParameter("id"); 
                            String customer_name="",customer_type="",customer_address="",customer_contact="", customer_gst="" ;
                            Statement st = DbConnect.getConnection();
                            ResultSet rs = st.executeQuery("select * from customer where customer_no='"+customer_no+"' ");
                            if(rs.next()){
                                customer_name = rs.getString("customer_name");
                                customer_type = rs.getString("customer_type");
                                customer_address = rs.getString("customer_address");
                                customer_contact = rs.getString("customer_contact");
                                customer_gst = rs.getString("customer_gst");
                            }
                        %>
                        <form id="editcustomerfrm">
                            <div class="form-group">    
                              <label for="customerno">Customer No</label>
                              <input type="text" class="form-control" name="customerno" value="<%=customer_no%> " readonly>
                            </div>
                            <div class="form-group">
                              <label for="customername">Customer Name</label>
                              <input type="text" class="form-control" name="customername" value="<%=customer_name%>">
                            </div>
                            <div class="form-group">
                              <label for="customertype">Customer type</label>
                              <input type="text" class="form-control" name="customertype" value="<%=customer_type%>">
                            </div>
                             <div class="form-group">
                              <label for="customeraddress">Customer Address</label>
                              <input type="text" class="form-control" name="customeraddress" value="<%=customer_address%>">
                            </div>
                            <div class="form-group">
                              <label for="customercontact">Customer Contact</label>
                              <input type="text" class="form-control" name="customercontact" value="<%=customer_contact%>" >
                            </div>
                            <div class="form-group">
                            <label for="customergst">GST</label>
                              <input type="text" class="form-control" name="gst" value="<%=customer_gst%> " >
                            </div>
                            <button type="button" id="editcustomerbtn" class="btn btn-primary">Update</button>
                            <a href="Customer_Details.jsp"><button type="button" class="btn btn-primary">Back</button></a>
                          </form>
                    </div>
                </div>
                 <div class="col-2"></div>
                </div>
         </div>
         
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="js/customer.js"></script>               
           <script src="js/index.js"></script>   
    </body>
</html>



