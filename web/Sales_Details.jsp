<%-- 
    Document   : Sales_Details
    Created on : 10 Sep, 2018, 9:46:34 AM
    Author     : settu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SALES DETAILS</title>
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
                   <a class="nav-link "  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link "  href="Purchase_Details.jsp" >Purchase Details</a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Stock_Details.jsp" >Stock Details</a>
                        <a class="nav-link active"  href="Sales_Details.jsp" >Sales Details</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                    <a class="nav-link "  href="#" >Report</a>
                </div>
                </div>
                <div class="col-10">
                    <div class="container">
                        <h2 class="text-center">SALES DETAILS</h2>
                       <button type="button" class="btn btn-primary m-2 float-right" data-toggle="modal" data-target="#Add_Sales">
                            Add Sales Details
                        </button>
                         <table class="table">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Sales Date</th>
                              <th scope="col">Customer Number</th>
                              <th scope="col">Item Number</th>                           
                              <th scope="col">Quantity</th>
                              <th scope="col">Rate</th>
                              <th scope="col">Batch Number</th>
                              <th scope="col">Expiry Date</th>
                              <th scope="col">Amount</th>
                              <th scope="col">Discount</th>
                              <th scope="col">Tax</th>                             
                              <th scope="col">Net Amount</th>
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
                              <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">2</th>
                              <td>Jacob</td>
                              <td>Thornton</td>
                              <td>@fat</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">4</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">5</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">6</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">7</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">9</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                              <th scope="row">10</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                              <td>sgr</td>
                               <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td>@mdo</td>
                              <td>sgr</td>
                              <td><button class="btn btn-secondary mr-2">Edit</button></td>
                              <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
                        <!-- Modal Add Sales Details -->
                <div class="modal fade" id="Add_Sales" tabindex="-1" role="dialog" aria-labelledby="Add_sales_details" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="Add_sales_details">Add Sales Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                          <form action="">
                              <div class="form-group">
                                  <label>Sales Date</label>
                                  <input class="form-control" name="Sales_date" placeholder="Enter the sales date">
                              </div>
                              <div class="form-group">
                                  <label>Customer Number</label>
                                  <input class="form-control" name="Customer_number" placeholder="Enter the Customer number">
                              </div> 
                              <div class="form-group">
                                  <label>Item Number</label>
                                  <input class="form-control" name="Item_Number" placeholder="Enter the Item number">
                              </div>
                              
                              <div class="form-group">
                                  <label>Quantity</label>
                                  <input class="form-control" name="quantity" placeholder="Enter the quantity">
                              </div>
                                <div class="form-group">
                                  <label>Rate</label>
                                  <input class="form-control" name="rate" placeholder="Enter the rate">
                              </div>
                              <div class="form-group">
                                  <label>Batch Number</label>
                                  <input class="form-control" name="batch_number" placeholder="Enter the batch number">
                              </div>
                                <div class="form-group">
                                  <label>Expiry Date</label>
                                  <input class="form-control" name="Expiry_date" placeholder="Enter the Expiry date">
                              </div>
                                <div class="form-group">
                                  <label>Amount</label>
                                  <input class="form-control" name="Amount" placeholder="Enter the Amount">
                              </div>
                              <div class="form-group">
                                  <label>Discount</label>
                                  <input class="form-control" name="Discount" placeholder="Enter the Discount">
                              </div>
                                <div class="form-group">
                                  <label>Tax</label>
                                  <input class="form-control" name="Tax" placeholder="Enter the Tax">
                              </div>
                                <div class="form-group">
                                  <label>Net Amount</label>
                                  <input class="form-control" name="Net_amount" placeholder="Enter the net amount">
                              </div>
                          
                      </div>
                      <div class="modal-footer">
                          <button type="reset" class="btn btn-secondary" >Reset</button>
                        <button type="button" class="btn btn-primary">Add Supplier</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
    </body>
</html>
