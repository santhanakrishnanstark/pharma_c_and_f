
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="css/custom_purchase_details.css">
            <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
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
                        <a class="nav-link "  href="Brand_Details.jsp" >Brand Details</a>
                        <a class="nav-link "  href="Category_Details.jsp" >Category Details</a>
                        <a class="nav-link "  href="Product_Details.jsp" >Product Details</a>
                        <a class="nav-link "  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link active"  href="Purchase.jsp" >Purchase</a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Sales.jsp" >Sales Details</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                        <a class="nav-link "  href="#" >Report</a>
                    </div>
                </div>     
                <div class="col-1"></div>
                    <div class="col-8">
                        <!-- Purchase div -->
                        <h2 class="text-center mt-5">PURCHASE </h2>
                        <div class="container purchasemodule my-5 p-3">
                            <div class="form-row mt-3">
                              <div class="col-6">
                                 <h5 class="mb-2">Supplier : </h5>
                              </div>
                                <div class="col-6">
                               
                                </div>
                            </div>
                            <div class="form-row mt-3">
                              <div class="col">
                                 <select id="suppliers" class="form-control">
                                </select>
                              </div>
                              <div class="col">
                                  <input type="date" class="form-control" id="entrydate" placeholder="Entry Date">
                              </div>
                                <div class="col">
                                <input type="text" id="invoiceno" class="form-control" placeholder="Invoice No">
                              </div>
                                <div class="col">
                                <input type="date" id="invoicedate" class="form-control" placeholder="Invoice Date">
                              </div>
                            </div>
                        </div> 
                        
                         <h3 class="text-center mt-5">Purchase Entry </h3>
                        <div class="container purchasemodule my-5 p-3">
                            <button id="add_purchase_entry" class="float-right mb-2 text-center">+</button>
                            <div class="row">
                                <div class="col-12">
                                <table id="entrytable" class="table">
                                        <thead id="thead">
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Product Price</th>
                                                <th>Quantity</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody">

                                        </tbody>
                                </table>
                                </div>
                            </div>
                            <div class="row container">
                                <div class="col-6"></div>
                                <div class="col-6">
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
                                                 <button class="btn btn-secondary" id="addpurchase">Add Purchase</button>
                                             </div>
                                        </div>
                                </div>
                            </div>
                        </div> 
                       
                       <!-- Purchase Details  -->   
                    <div class="container mt-5">
                        <h4 class="text-center">PURCHASE DETAILS</h4>
                       
                        <table class="table table-sm mr-5" id="purchasetb">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Bill No</th>
                              <th scope="col">Bill Date</th>
                              <th scope="col">Invoice No</th>
                              <th scope="col">Invoice Date</th>
                              <th scope="col">Supplier Name</th>
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
        <script src="js/purchase.js"></script>               
         <script src="js/index.js"></script>                                    
    </body>
</html>
