let invoice_no,invoice_date,buyer_name,buyer_address,sub_total,gst,discount,net_total;
$(document).ready(function(){
    $("#billbtn").bind("click",getData);
    $("#printbtn").bind("click",startPrint);
});
function startPrint(){
    window.print();
}
function getData(){
   let invno = $("#invno").val();
    $.ajax({
        url:'Billing',
        method:'post',
        dataType:'json',
        data:{invoiceno : invno },
        success: function(result){
            let count = Object.keys(result).length; 
             for(let i=0; i<count; i++){ 
                 if(i==0){ $("#invoice_no").text(result[i]); }
                 if(i==1){ $("#invoice_date").text(result[i]); }
                 if(i==2){ $("#buyer_name").text(result[i]); }
                 if(i==3){ $("#sub_total").text(result[i]); }
                 if(i==4){ $("#gst").text(result[i]); }
                 if(i==5){ $("#discount").text(result[i]); }
                 if(i==6){ $("#total_amount").text(result[i]); }
                 if(i==7){ $("#buyer_address").text(result[i]); }
             }   
        }
    });
    $.ajax({
        url:'BillingItems',
        method:'post',
        data:{ino:invno },
        success:function(result){
            $("#items").html(result);
        }
    });
}