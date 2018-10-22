
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.DbConnect"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Category</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
       <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
       <link rel="stylesheet" href="css/custom_editcategory_details.css">
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
                        <a class="nav-link active"  href="Category_Details.jsp" >Category Details</a>
                        <a class="nav-link "  href="Product_Details.jsp" >Product Details</a>
                        <a class="nav-link "  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link "  href="Purchase.jsp" >Purchase </a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Sales.jsp" >Sales Details</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                        <a class="nav-link "  href="#" >Report</a>
                    </div>
                </div>    
                <div class="col-2"></div>
                    <div class="col-6">
                    <div class="container mt-5">
                        <h2>Edit Category</h2>
                        <%
                            String category_id = request.getParameter("id"); 
                            String category_name="";
                            Statement st = DbConnect.getConnection();
                            ResultSet rs = st.executeQuery("select category_name from category where category_id='"+category_id+"' ");
                            if(rs.next()){
                                category_name = rs.getString("category_name");
                            }
                        %>
                        <form id="editcategoryfrm">
                            <div class="form-group">
                              <label for="categoryid">Category ID</label>
                              <input type="text" class="form-control" name="categoryid" value="<%=category_id%> " readonly>
                            </div>
                            <div class="form-group">
                              <label for="categoryname">Category Name</label>
                              <input type="text" class="form-control" name="categoryname" value="<%=category_name%>">
                            </div>
                            <button type="button" id="editcategorybtn" class="btn btn-primary">Update</button>
                            <a href="Category_Details.jsp"><button type="button" class="btn btn-primary">Back</button></a>
                          </form>
                    </div>
                </div>
                 <div class="col-2"></div>
                </div>
                </div>
         
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="js/category.js"></script>               
          <script src="js/index.js"></script>    
    </body>
</html>
