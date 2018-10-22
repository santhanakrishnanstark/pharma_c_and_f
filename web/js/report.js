$(document).ready(function(){
    $("#viewbtn").bind("click",generateReport);
    $("#printbtn").bind("click",report);
});
function report(){
    window.print();
}
function generateReport(){
    let entry = $("#entry").val();
    let fromdate = $("#fromdate").val();
    let todate = $("#todate").val();
    if(entry=='Purchase'){
        $.ajax({
            url:'PurchaseReport',
            method:'post',
            data:{fdate:fromdate,tdate:todate},
            success:function(result){
                $("#purchasereport").html(result);
            }
        });
    }else{
         $.ajax({
            url:'SalesReport',
            method:'post',
            data:{fdate:fromdate,tdate:todate},
            success:function(result){
                $("#purchasereport").html(result);
            }
        });
    }
}

