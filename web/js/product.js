$(document).ready(function(){
    $("#addproductbtn").bind("click",addProduct);
    $("#editproductbtn").bind("click",editProduct);
    $("#addpro").bind("click",getList);
    showProductTable();
});

function addProduct(){ 
    $.ajax({
        url:'AddProduct',
        method:'post',
        data:$('#addproductfrm').serialize(),
        success:function(result){
           $("#productmessage").html(result);
            showProductTable();
        }
    });
}

function getList(){
     $.ajax({
        url:'AddCategoryList',
        method:'post',
        success:function(result){
           $("#categoryid").html(result);
        }
    });
    $.ajax({
        url:'AddBrandList',
        method:'post',
        success:function(result){
           $("#brandid").html(result);
        }
    }); 
}
function showProductTable(){
    $.ajax({
        url:'ShowProduct',
        method:'post',
        success:function(result){
           $("#producttb tbody").html(result);
        }
    });
}
function deleteProduct(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeleteProduct',
        method:'post',
        data:{pid:id},
        success:function(result){
           alert(result);
            showProductTable();
        }
    });
}
function editProduct(){
     $.ajax({
        url:'UpdateProduct',
        method:'post',
        data:$("#editproductfrm").serialize(),
        success:function(result){
           alert(result);
           location.reload();
        }
    });
}