$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
$(document).ready(function(){
    $("#logoutbtn").bind("click",logout);
});
function logout(){
    window.location="index.html"
}