
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="css/custom_report.css">
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
                        <a class="nav-link "  href="Purchase.jsp" >Purchase </a>
                        <a class="nav-link "  href="Customer_Details.jsp" >Customer Details</a>
                        <a class="nav-link "  href="Sales.jsp" >Sales Details</a>
                        <a class="nav-link "  href="Billing.jsp" >Billing </a>
                        <a class="nav-link active"  href="#" >Report</a>
                    </div>
                </div>     
                <div class="col-1"></div>
                    <div class="col-8">
                    <div class="container mt-5">
                        <h2 id="billtitle" class="text-center">Report</h2>
                        <div id="billhead" class="form-row mt-5">
                            <div class="col-2">
                                 <select id="entry" class="form-control">
                                    <option value="Purchase">Purchase</option>
                                    <option value="Sales">Sales</option>
                                </select>
                            </div>
                            <div class="col-1">From:</div>
                            <div class="col-3">
                                 <input type="date" id="fromdate" class="form-control">
                            </div>
                            <div class="col-1">To:</div>
                            <div class="col-3">
                                <input type="date" id="todate" class="form-control">
                            </div>
                            <div class="col-2">
                                <input type="button" id="viewbtn" value="View" class="btn btn-success">
                                <input type="button" id="printbtn" value="Print" class="btn btn-secondary">
                            
                            </div>
                        </div>
                    </div>
                        
                        <div class="container mt-5">
                            <table id="report" class="table">
                                <thead>
                               
                                </thead>
                                <tbody id="purchasereport">
                                    
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
        <script src="js/report.js"></script>               
                                            
    </body>
</html>
