
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supplier Details</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/custom_supplier_details.css">
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
                        <a class="nav-link active"  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link "  href="Purchase.jsp" >Purchase</a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Sales.jsp" >Sales Details</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                        <a class="nav-link "  href="#" >Report</a>
                    </div>
                </div>     
                <div class="col-1"></div>
                    <div class="col-8">
                    <div class="container mt-5">
                        <h2 class="text-center">Supplier DETAILS</h2>
                        <button type="button" class="btn btn-primary mr-5 mb-3 float-right" data-toggle="modal" data-target="#addsupplier">
                            Add Supplier </button>
                        <table class="table mr-5" id="suppliertb">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Supplier ID</th>
                              <th scope="col">Supplier Name</th>
                              <th scope="col">Address</th>
                              <th scope="col">Contact</th>
                              <th scope="col">GST</th>
                              <th scope="col">#</th>
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
        
                             <!-- Modal 3 -->
<div class="modal fade" id="addsupplier" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Supplier</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form id="addsupplierfrm">
              <div class="form-group">
                    <label for="suppliername">Supplier Name :</label>
                    <input type="text" name="suppliername" placeholder="Enter the product name" class="form-control">
              </div>
              <div class="form-group">
                    <label for="supplieraddress">Supplier Address :</label>
                    <textarea name="supplieraddress" class="form-control"></textarea>
              </div>
              <div class="form-group">
                    <label for="contact">Contact :</label>
                    <input type="text" name="contact" placeholder="contact no" class="form-control">
              </div>
               <div class="form-group">
                    <label for="gst">GST :</label>
                    <input type="text" name="gst" placeholder="gst no" class="form-control" id="categoryid">
              </div>
              <p id="suppliermessage" class="success"></p>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="addsupplierbtn" class="btn btn-primary">ADD</button>
      </div>
    </div>
  </div>
</div>
       
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="js/supplier.js"></script>               
          <script src="js/index.js"></script>                                   
    </body>
</html>
