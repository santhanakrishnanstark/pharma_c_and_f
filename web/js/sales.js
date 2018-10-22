let sub_total=0,gstotal=0,discountotal=0,netotal=0,invoice_no;
$(document).ready(function(){
    var d = new Date();
    var month = d.getMonth()+1;
    var day = d.getDate();
    var output = d.getFullYear() + '-' +
        (month<10 ? '0' : '') + month + '-' +
        (day<10 ? '0' : '') + day;
        $('#entrydate').val(output);
        
    getCustomerList();
    $("#add_sales_entry").bind("click",appendEntry);
    $("#addsales").bind("click",addSales);
    showSalesTable();
});
function getCustomerList(){
      $.ajax({
        url:'CustomerList',
        method:'post',
        success:function(result){
           $("#customers").html(result);
        }
    });
}
function appendEntry(){
 
    let tlen = $("#entrytable tr").length-1; 
    let i=0; 
    var entry="<tr> \n\
               <td><select onchange='setPrice(this)' class='productname form-control "+tlen+" '> </select></td>\n\
               <td><input type='text' class='form-control "+tlen+" '></td> \n\
               <td><input type='text' class='form-control "+tlen+" ' readonly></td> \n\
               <td><input type='text' onkeyup='updateTotal(this)' class='form-control "+tlen+" '></td>  \n\
               <td><input type='text' class='form-control "+tlen+" ' readonly></td>  \n\
               </tr>";
       $.ajax({
        url:'ProductList',
        method:'post',
        success:function(result){
           $("."+tlen).html(result);
        }
    }); 
   let data=$("#entrytable #tbody").append(entry);
   let idlen=Number(tlen);
    data.find("td ."+idlen).each(function( index ) {
    $(this).attr("id",tlen+''+i++);
    });
}
function setPrice(dis){
    let cls = $(dis).attr('id'); let pid = $(dis).val();  
    let first = cls.toString().substr(0,1); 
    let second = cls.toString().substr(1,1); 
    let priceid = first+Number((Number(second)+1)); 
    let totalquantityid = first+Number((Number(second)+2)); 
    $.ajax({ 
        url:'ProductPrice',
        method:'post',
        data: {p_id: pid},
        success:function(result){
           $("#"+priceid).val(result);
        }
    });
    $.ajax({ 
        url:'Quantity',
        method:'post',
        data: {p_id: pid},
        success:function(result){
           $("#"+totalquantityid).val(result);
        }
    });
}
function updateTotal(dis){
    let current_id = $(dis).attr('id');
    let qty = $(dis).val(); 
    let first = current_id.toString().substr(0,1); 
    let second = current_id.toString().substr(1,1); 
    let product_price_id = first+Number((Number(second)-2)); 
    let p_price = $("#"+product_price_id).val(); 
     sub_total += Number(qty) * Number(p_price); 
     gstotal = sub_total + Number(sub_total)*0.18;
    let total =  Number(qty) * Number(p_price); 
    let total_id = first+Number(Number(second)+1);
    $("#"+total_id).val(total);
     $("#discount").val(Number("0"));
     $("#subtotal").val(sub_total); $("#gst").val(gstotal);
     $("#netotal").val(gstotal);
}
function updateNetTotal(dis){
    let discount = $(dis).val();
    netotal = Number(gstotal) - Number(discount); 
    $("#netotal").val(netotal);
}
function addSales(){
     let count=0;
    $("#tbody").find("tr").each(function( index ){
        count = index++;
    });
    let row = count , col=4;
    var q = new Array();
	for(let i=0; i<=row; i++){
		q[i] = new Array();
		for(let j=0; j<=col; j++){
			var pick = "#"+i+j; 
			q[i][j] = $(pick).val();
		}
            }
            let customer_id=$("#customers").val(); 
            let bill_date=$("#entrydate").val();
            let sub_total=$("#subtotal").val();
            let gst=$("#gst").val();
            let discount=$("#discount").val();
            let netotal=$("#netotal").val();
     $.ajax({
         url:'StoreSales',
         method:'post',
         data:{r:row,c:col,cid:customer_id,b_date:bill_date,stotal:sub_total,gstno:gst,dis:discount,net:netotal,precord:q},
         success:function(result){
             if(result) {alert('Entry Added Success !'); showSalesTable();}
         }
     }); 
}
function showSalesTable(){
     $.ajax({
        url:'ShowSales',
        method:'post',
        success:function(result){
           $("#salestb tbody").html(result);
        }
    });
}
function deleteSales(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeleteSales',
        method:'post',
        data:{sid:id},
        success:function(result){
           alert(result);
            showSalesTable();
        }
    });
}