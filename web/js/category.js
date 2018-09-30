$(document).ready(function(){
    $("#addcategorybtn").bind("click",addCategory);
     $("#editcategorybtn").bind("click",editCategory);
    showCategoryTable();
});

function addCategory(){ 
    $.ajax({
        url:'AddCategory',
        method:'post',
        data:$('#addcategoryfrm').serialize(),
        success:function(result){
           $("#categorymessage").html(result);
            showCategoryTable();
        }
    });
}
function showCategoryTable(){
    $.ajax({
        url:'ShowCategory',
        method:'post',
        success:function(result){
           $("#categorytb tbody").html(result);
        }
    });
}
function deleteCategory(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeleteCategory',
        method:'post',
        data:{cid:id},
        success:function(result){
           alert(result);
            showCategoryTable();
        }
    });
}
function editCategory(){
     $.ajax({
        url:'UpdateCategory',
        method:'post',
        data:$("#editcategoryfrm").serialize(),
        success:function(result){
           alert(result);
           location.reload();
        }
    });
}

