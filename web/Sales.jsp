
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="css/custom_sales_details.css">
            <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
    </head>
    <body>
        <div class="col-md-6 mt-3 ml-3 header">
                        <h1>Pharma C & F Agency</h1>  
        </div>
        
         <div class="container-fluid p-0">
            <div class="row">
                <div class="col-2 mt-5">
                    <div class="nav flex-column nav-pills"aria-orientation="vertical">
                        <a class="nav-link "  href="Brand_Details.jsp" >Brand Details</a>
                        <a class="nav-link "  href="Category_Details.jsp" >Category Details</a>
                        <a class="nav-link "  href="Product_Details.jsp" >Product Details</a>
                        <a class="nav-link "  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link "  href="Purchase.jsp" >Purchase</a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link active"  href="#" >Sales</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                        <a class="nav-link "  href="#" >Report</a>
                    </div>
                </div>     
                <div class="col-1"></div>
                    <div class="col-8">
                        <!-- Sales div -->
                        <h2 class="text-center mt-5">SALES </h2>
                        <div class="container salesmodule my-5 p-3">
                            <div class="form-row mt-3">
                              <div class="col-6">
                                 <h5 class="mb-2">Customer : </h5>
                              </div>
                                <div class="col-6">
                                 <h5 class="mb-2">Date : </h5>
                                </div>
                            </div>
                            <div class="form-row mt-3">
                              <div class="col">
                                 <select id="customers" class="form-control">
                                </select>
                              </div>
                              <div class="col">
                                  <input type="date" class="form-control" id="entrydate" placeholder="Entry Date">
                              </div>
                                                             
                            </div>
                        </div> 
                        
                         <h3 class="text-center mt-5">Sales Entry </h3>
                        <div class="container salesmodule my-5 p-3">
                            <button id="add_sales_entry" class="float-right mb-2 text-center">+</button>
                            <div class="row">
                                <div class="col-12">
                                <table id="entrytable" class="table">
                                        <thead id="thead">
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Product Price</th>
                                                <th>Available Quantity</th>
                                                <th>Quantity</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody">

                                        </tbody>
                                </table>
                                </div>
                            </div>
                            <div class="row container">
                                <div class="col-7"></div>
                                <div class="col-5">
                                        <div class="form-row mt-2">
                                            <div class="col">
                                            <h6>Sub Total : </h6>
                                            </div>
                                            <div class="col">
                                            <input type="text" class="form-control" id="subtotal">
                                            </div>
                                        </div>
                                        <div class="form-row mt-2">
                                             <div class="col">
                                            <h6>GST (18%) : </h6>
                                             </div>
                                             <div class="col">
                                            <input type="text" class="form-control" id="gst">
                                             </div>
                                        </div>
                                        <div class="form-row mt-2">
                                             <div class="col">
                                            <h6>Discount : </h6>
                                             </div>
                                             <div class="col">
                                                 <input type="text" class="form-control" id="discount" onkeyup="updateNetTotal(this)">
                                             </div>
                                             </div>
                                        <div class="form-row mt-2">
                                             <div class="col">
                                            <h6>Net Total : </h6>
                                             </div>
                                             <div class="col">
                                            <input type="text" class="form-control" id="netotal">
                                             </div>
                                        </div>
                                    <div class="form-row mt-3">
                                             <div class="col">
                                            <h6> </h6>
                                             </div>
                                             <div class="col">
                                                 <button class="btn btn-secondary" id="addsales">Add Sales</button>
                                             </div>
                                        </div>
                                </div>
                            </div>
                        </div> 
                       
                       <!-- Purchase Details  -->   
                    <div class="container mt-5">
                        <h4 class="text-center">SALES DETAILS</h4>
                       
                        <table class="table table-sm mr-5" id="salestb">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Invoice No</th>
                              <th scope="col">Invoice Date</th>
                              <th scope="col">Customer Name</th>
                              <th scope="col">Sub Total</th>
                              <th scope="col">GST</th>
                              <th scope="col">Discount</th>
                              <th scope="col">Net Total</th>
                              <th scope="col">#</th>
                            </tr>
                          </thead>
                          <tbody>
                                                  
                          </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-1"></div>
            </div>
        </div>
        

        
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="js/sales.js"></script>               
                                            
    </body>
</html>
