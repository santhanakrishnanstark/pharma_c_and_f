let sub_total=0,gstotal=0,discountotal=0,netotal=0,invoice_no;
$(document).ready(function(){
    var d = new Date();
    var month = d.getMonth()+1;
    var day = d.getDate();
    var output = d.getFullYear() + '-' +
        (month<10 ? '0' : '') + month + '-' +
        (day<10 ? '0' : '') + day;
        $('#entrydate').val(output);
        
    getSupplierList();
    $("#add_purchase_entry").bind("click",appendEntry);
    $("#addpurchase").bind("click",addPurchase);
    showPurchaseTable();
});
function getSupplierList(){
     $.ajax({
        url:'SupplierList',
        method:'post',
        success:function(result){
           $("#suppliers").html(result);
        }
    });
}
function showPurchaseTable(){
     $.ajax({
        url:'ShowPurchase',
        method:'post',
        success:function(result){
           $("#purchasetb tbody").html(result);
        }
    });
}
function appendEntry(){
 
    let tlen = $("#entrytable tr").length-1; 
    let i=0; 
    var entry="<tr> \n\
               <td><select onchange='setPrice(this)' class='productname form-control "+tlen+" '> </select></td>\n\
               <td><input type='text' class='form-control "+tlen+" '></td> \n\
               <td><input type='text' onkeyup='updateTotal(this)' class='form-control "+tlen+" '></td>  \n\
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
    $.ajax({ 
        url:'ProductPrice',
        method:'post',
        data: {p_id: pid},
        success:function(result){
           $("#"+priceid).val(result);
        }
    }); 
}
function updateTotal(dis){
    let current_id = $(dis).attr('id');
    let qty = $(dis).val(); 
    let first = current_id.toString().substr(0,1); 
    let second = current_id.toString().substr(1,1); 
    let product_price_id = first+Number((Number(second)-1)); 
    let p_price = $("#"+product_price_id).val();
     sub_total += Number(qty) * Number(p_price); 
     gstotal = sub_total + Number(sub_total)*0.18;
     $("#discount").val(Number("0"));
     $("#subtotal").val(sub_total); $("#gst").val(gstotal);
     $("#netotal").val(gstotal);
}
function updateNetTotal(dis){
    let discount = $(dis).val();
    netotal = Number(gstotal) - Number(discount); 
    $("#netotal").val(netotal);
}
function addPurchase(){
    let count=0;
    $("#tbody").find("tr").each(function( index ){
        count = index++;
    });
    let row = count , col=2;
    var q = new Array();
	for(let i=0; i<=row; i++){
		q[i] = new Array();
		for(let j=0; j<=col; j++){
			var pick = "#"+i+j; 
			q[i][j] = $(pick).val();
		}
            }
            let supplier_id=$("#suppliers").val(); 
            let bill_date=$("#entrydate").val();
            let invoice_no=$("#invoiceno").val();
            let invoice_date=$("#invoicedate").val();
            let sub_total=$("#subtotal").val();
            let gst=$("#gst").val();
            let discount=$("#discount").val();
            let netotal=$("#netotal").val();
     $.ajax({
         url:'StorePurchase',
         method:'post',
         data:{r:row,c:col,sid:supplier_id,b_date:bill_date,invno:invoice_no,invdate:invoice_date,stotal:sub_total,gstno:gst,dis:discount,net:netotal,precord:q},
         success:function(result){
             if(result) {alert('Entry Added Success !'); showPurchaseTable();}
         }
     });     
}
function deletePurchase(dis){
    let id = $(dis).attr('id');
    $.ajax({
        url:'DeletePurchase',
        method:'post',
        data:{pid:id},
        success:function(result){
           alert(result);
            showPurchaseTable();
        }
    });
}