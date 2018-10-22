
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="css/custom_billing.css">
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
                    <div id="sidebar" class="nav flex-column nav-pills"aria-orientation="vertical">
                        <a class="nav-link "  href="Brand_Details.jsp" >Brand Details</a>
                        <a class="nav-link "  href="Category_Details.jsp" >Category Details</a>
                        <a class="nav-link "  href="Product_Details.jsp" >Product Details</a>
                        <a class="nav-link "  href="Supplier_Details.jsp" >Supplier Details</a>
                        <a class="nav-link "  href="Purchase.jsp" >Purchase</a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Sales.jsp" >Sales Details</a>
                        <a class="nav-link active"  href="#" >Billing </a>
                        <a class="nav-link "  href="report.jsp" >Report</a>
                    </div>
                </div>     
                <div class="col-1"></div>
                    <div class="col-8">
                        <h2 id="billtitle" class="text-center mt-5">Bill Entry </h2>
                        <div id="billhead" class="viewbill  p-4">
                            <div class="form-row">
                                <div class="col-2">
                                </div>
                                <div class="col-2"><h6>Invoice No:</h6></div>
                                <div class="col-4">
                                    <input type="text" class="form-control" id="invno">
                                </div>
                                <div class="col-3">
                                    <input type="button" value="VIEW BILL" class="btn btn-secondary" id="billbtn">
                                </div>
                                 <div class="col-1">
                                    <input type="button" value="Print" class="btn btn-secondary" id="printbtn">
                                </div>
                            </div>
                        </div>
                        <div class="container bill mt-4" id="billpaper">
                            <div class="invoice text-center">
                              <h4>INVOICE</h4>
                            </div>
                            <div class="title col-12">
                              <div class="row mt-3">
                                <div class="col-8 text-center ctitle">
                                  <div><h2>Pharma C & F Agency</h2>
                                    <h6>Chennai-42</h6>
                                    <h6>8987898765</h6>
                                  </div>
                                </div>
                                <div class="col-4 cright">
                                  <div class="row">
                                    <div class="col-6">
                                      <h6>INVOICE NO:</h6>
                                    </div>
                                  <div class="col-6">
                                    <h6 id="invoice_no">343</h6> 
                                  </div>
                                </div>
                                   <div class="row">
                                    <div class="col-6">
                                      <h6>DATE : </h6>
                                    </div>
                                  <div class="col-6">
                                    <h6 id="invoice_date">343</h6> 
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                            <!-- TITLE Pharma c f over -->
                           <div class="pt-3 trow">
                             <div class="row">
                               <div class="col-9">
                                 <p><b>BUYER : </b></p>
                                 <div class="ml-5">
                                   <h4 id="buyer_name">Buyer Name</h4>
                                   <p id="buyer_address">something</p>
                                 </div>
                               </div>
                               <div class="col-3"></div>
                             </div>
                            </div>

                            <div class="itemtable">
                              <table class="table">
                                <thead>
                                <tr>
                                  <th>S.NO</th>
                                  <th>Particulars</th>
                                  <th>QTY</th>
                                  <th>RATE</th>
                                  <th>AMOUNT</th>
                                </tr>
                               </thead>
                                <tbody id="items">

                                </tbody>
                              </table>
                            </div>
  
                        <div class="frow">
                          <div class="row">
                            <div class="col-7"></div>
                            <div class="col-5">
                              <div class="row">
                                <div class="col-5 text-right font-weight-bold">
                                   <p>Sub total : </p>
                                   <p>GST :  </p>
                                   <p>Discount :  </p>
                                   <p>Total Amount :  </p>
                                </div>
                                 <div class="col-4 pl-4 font-weight-bold">
                                   <p id="sub_total">Sub total </p>
                                   <p id="gst">GST </p>
                                   <p id="discount">Discount </p>
                                   <p id="total_amount">Total Amount </p>
                                </div>
                                <div class="col-3"></div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="footer">
                          <div class="row">
                            <div class="col-6">
                              <h5>Declaration :</h5>
                              <p>We declare that this invoice shows the actual price of the goods. </p>
                            </div>
                            <div class="col-6 text-center">
                              <h6>For Pharma C & F Agency</h6>
                               <div id="signspace"></div>
                               <p><b>Authorized Signature</b></p>
                            </div>
                          </div>
                        </div>
                      </div>
                        
                    </div>
                <div class="col-1"></div>
            </div>
        </div>
        
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="js/billing.js"></script>               
                                            
    </body>
</html>
