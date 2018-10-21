$(document).ready(function(){
    $("#addsupplierbtn").bind("click",addSupplier);
    $("#editsupplierbtn").bind("click",editSupplier);
    showSupplierTable();
});

function addSupplier(){ 
    $.ajax({
        url:'AddSupplier',
        method:'post',
        data:$('#addsupplierfrm').serialize(),
        success:function(result){
           $("#suppliermessage").html(result);
            showSupplierTable();
        }
    });
}


function showSupplierTable(){
    $.ajax({
        url:'ShowSupplier',
        method:'post',
        success:function(result){
           $("#suppliertb tbody").html(result);
        }
    });
}
function deleteSupplier(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeleteSupplier',
        method:'post',
        data:{sid:id},
        success:function(result){
           alert(result);
            showSupplierTable();
        }
    });
}
function editSupplier(){
     $.ajax({
        url:'UpdateSupplier',
        method:'post',
        data:$("#editsupplierfrm").serialize(),
        success:function(result){
           alert(result);
           location.reload();
        }
    });
}