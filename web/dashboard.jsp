

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <body>
        <div class="container-fluid"> 
        
            <div class="row">
                <div class="col-md-3 ml-5 mt-5">
                    <img src="pharma logo.jpg" class="d-inline" width="150" height="130" alt="center">
                </div>
                  <div class="col-md-6 text-center mr-2"><span class="title mt-5 ,mr-1">PHARMA C AND F AGENCY</span></div>
                    <div class="col-md-3"></div>
            </div>
        </div>    
        <div class="container">
            <div class="row mt-3">
                <div class="col-sm-4 mt-3">
                    <div class="menu">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addbrand">
                            Add Brand </button>
                    </div>
                </div>
                <div class="col-sm-4 mt-3">
                     <div class="menu">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addcategory">
                            Add Category </button>
                     </div>
                </div>
                <div class="col-sm-4 mt-3">
                     <div class="menu">
                     <button type="button" id="addpro" class="btn btn-primary" data-toggle="modal" data-target="#addproduct">
                            Add Product </button>
                     </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="Supplier_Details.jsp">Supplier details</a></div>
                </div>
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="Customer_Details.jsp">Customer_Details </a> </div>
                </div>
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="Purchase_Details.jsp">Purchase Details </a> </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="#">Sales </a> </div>
                </div>
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="#">Billing </a> </div>
                </div>
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="#">Stock</a> </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-sm-4">
                    
                </div>
                <div class="col-sm-4 mt-3">
                    <div class="menu"> <a href="#">Report </a> </div>
                </div>
                <div class="col-sm-4">
                    
                </div>
            </div>
        </div>
        
        <!-- Modal 1 -->
<div class="modal fade" id="addbrand" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Brand</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="addbrandfrm">
              <div class="form-group">
                    <label for="addbrand">Brand Name :</label>
                    <input type="text" name="brandname" placeholder="Enter the brand name" class="form-control">
              </div>
              <p id="brandmessage" class="success"></p>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="addbrandbtn" class="btn btn-primary">ADD</button>
      </div>
    </div>
  </div>
</div>
        
              <!-- Modal 2 -->
<div class="modal fade" id="addcategory" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Category</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form id="addcategoryfrm">
              <div class="form-group">
                    <label for="addcategory">Category Name :</label>
                    <input type="text" name="categoryname" placeholder="Enter the category name" class="form-control">
              </div>
              <p id="categorymessage" class="success"></p>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="addcategorybtn" class="btn btn-primary">ADD</button>
      </div>
    </div>
  </div>
</div>
        
                    <!-- Modal 3 -->
<div class="modal fade" id="addproduct" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form id="addproductfrm">
              <div class="form-group">
                    <label for="addproduct">Product Name :</label>
                    <input type="text" name="productname" placeholder="Enter the product name" class="form-control">
              </div>
              <div class="form-group">
                    <label for="addproduct">Product Price :</label>
                    <input type="text" name="productprice" placeholder="Enter the product price" class="form-control">
              </div>
              <div class="form-group">
                    <label for="addbrand">Brand :</label>
                    <select id="brandid">
                        
                    </select>
              </div>
               <div class="form-group">
                    <label for="addcategory">Category :</label>
                    <select id="categoryid">
                        
                    </select>
              </div>
              
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="addproductbtn" class="btn btn-primary">ADD</button>
      </div>
    </div>
  </div>
</div>
        
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="js/dashboard.js"></script>  
    </body>
</html>
