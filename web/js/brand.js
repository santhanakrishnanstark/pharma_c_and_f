$(document).ready(function(){
    $("#addbrandbtn").bind("click",addBrand);
    $("#editbrandbtn").bind("click",editBrand);
    showBrandTable();
});

function addBrand(){ 
    $.ajax({
        url:'AddBrand',
        method:'post',
        data:$('#addbrandfrm').serialize(),
        success:function(result){
           $("#brandmessage").html(result);
            showBrandTable();
        }
    });
}
function showBrandTable(){
    $.ajax({
        url:'ShowBrand',
        method:'post',
        success:function(result){
           $("#brandtb tbody").html(result);
        }
    });
}
function deleteBrand(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeleteBrand',
        method:'post',
        data:{bid:id},
        success:function(result){
           alert(result);
            showBrandTable();
        }
    });
}
function editBrand(){
     $.ajax({
        url:'UpdateBrand',
        method:'post',
        data:$("#editbrandfrm").serialize(),
        success:function(result){
           alert(result);
           location.reload();
        }
    });
}

