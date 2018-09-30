$(document).ready(function(){
    $("#addbrandbtn").bind("click",addBrand);
    $("#addcategorybtn").bind("click",addCategory);
    $("#addpro").bind("click",getList);
});

function addBrand(){ 
    $.ajax({
        url:'AddBrand',
        method:'post',
        data:$('#addbrandfrm').serialize(),
        success:function(result){
           $("#brandmessage").html(result);
        }
    });
}

function addCategory(){
    $.ajax({
        url:'AddCategory',
        method:'post',
        data:$('#addcategoryfrm').serialize(),
        success:function(result){
           $("#categorymessage").html(result);
        }
    });
}

function getList(){
    $.ajax({
        url:'AddBrandList',
        method:'post',
        data:$('#addbrandfrm').serialize(),
        success:function(result){
           $("#brandid").html(result);
        }
    });
}

