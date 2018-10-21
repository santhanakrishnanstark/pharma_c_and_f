$(document).ready(function(){
    $("#addcustomerbtn").bind("click",addCustomer);
    $("#editcustomerbtn").bind("click",editCustomer);
    showCustomerTable();
});

function addCustomer(){ 
    $.ajax({
        url:'AddCustomer',
        method:'post',
        data:$('#addcustomerfrm').serialize(),
        success:function(result){
           $("#customermessage").html(result);
            showCustomerTable();
        }
    });
}


function showCustomerTable(){
    $.ajax({
        url:'ShowCustomer',
        method:'post',
        success:function(result){
           $("#customertb tbody").html(result);
        }
    });
}
function deleteCustomer(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeleteCustomer',
        method:'post',
        data:{cid:id},
        success:function(result){
           alert(result);
            showCustomerTable();
        }
    });
}
function editCustomer(){
     $.ajax({
        url:'UpdateCustomer',
        method:'post',
        data:$("#editcustomerfrm").serialize(),
        success:function(result){
           alert(result);
           location.reload();
        }
    });
}