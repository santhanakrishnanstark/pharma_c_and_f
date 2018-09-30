<%-- 
    Document   : Supplier_Details
    Created on : 10 Sep, 2018, 8:39:43 AM
    Author     : settu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/custom_supplier_detalis.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="nav bg-success">
                <h3>Pharma C & F</h3>
            </nav>
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-2">
                    <div class="nav flex-column nav-pills"aria-orientation="vertical">
                    <a class="nav-link "  href="Brand_Details.jsp" >Brand Details</a>
                    <a class="nav-link "  href="Category_Details.jsp" >Category Details</a>
                    <a class="nav-link "  href="Product_Details.jsp" >Product Details</a>
                    <a class="nav-link active"  href="Supplier_Details.jsp" >Supplier Details</a>
                    <a class="nav-link "  href="Purchase_Details.jsp" >Purchase Details</a>
                    <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                    <a class="nav-link "  href="Stock_Details.jsp" >Stock Details</a>
                    <a class="nav-link "  href="Sales_Details.jsp" >Sales Details</a>
                    <a class="nav-link "  href="Billing.jsp" >Billing </a>
                    <a class="nav-link "  href="#" >Report</a>
                </div>
                </div>
                <div class="col-10">
                    <div class="container">
                        <h2 class="text-center">SUPPLIER DETAILS</h2>
                       <button type="button" class="btn btn-primary m-2 float-right" data-toggle="modal" data-target="#Add_Supplier">
                            Add Supplier
                        </button>
                        <table class="table">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Supplier No</th>
                              <th scope="col">Supplier Name</th>
                              <th scope="col">Address</th>
                              <th scope="col">Contact</th>
                              <th scope="col">Credit Amount</th>
                              <th scope="col">#t</th>
                              <th scope="col">#</th>
                              <th scope="col">#</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                               <td>@mdo</td>                             
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">2</th>
                              <td>Jacob</td>
                              <td>Thornton</td>
                              <td>@fat</td>
                              <td>sgr</td>
                               <td>@mdo</td>                              
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>@mdo</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>@mdo</td>                            
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>@mdo</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
                        <!-- Modal Add Supplier Details -->
                <div class="modal fade" id="Add_Supplier" tabindex="-1" role="dialog" aria-labelledby="Add_supplier_details" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="Add_supplier_details">Add Supplier Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                          <form action="">
                              <div class="form-group">
                                  <label>Supplier Name</label>
                                  <input class="form-control" name="supplier_name" placeholder="Enter the Supplier Name">
                              </div>
                              <div class="form-group">
                                  <label>Address</label>
                                  <input class="form-control" name="supplier_address" placeholder="Enter the Supplier Address">
                              </div>
                              <div class="form-group">
                                  <label>Contact</label>
                                  <input class="form-control" name="supplier_contact" placeholder="Enter the Supplier Contact no ">
                              </div>
                              <div class="form-group">
                                  <label>Credit Amount</label>
                                  <input class="form-control" name="supplier_credit_amount" placeholder="Enter the Credit Amount">
                              </div>
                            </form>

                          
                      </div>
                      <div class="modal-footer">
                          <button type="reset" class="btn btn-secondary" >Reset</button>
                        <button type="button" class="btn btn-primary">Add Supplier</button>
                          </div>
                    </div>
                  </div>
                </div>
    </body>
</html>
