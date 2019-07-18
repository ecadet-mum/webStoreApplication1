var urlPage;
$(function () {
    urlPage = $("#idURL").val();

})



function callCheckOutFormNew(){

    var ifLogin=$("#idLogin").val();

    if(ifLogin==1){
        /*document.getElementById("idFormCheckOut").action=urlPage+"reviewShoppingCart";
        document.getElementById("idFormCheckOut").method="get";
        document.getElementById("idFormCheckOut").submit();*/
        getReviewShoppingCart();
    }else{
        /*document.getElementById("idFormCheckOut").action=urlPage+"login";
        document.getElementById("idFormCheckOut").method="get";
        document.getElementById("idFormCheckOut").submit();*/
        getLoginPage();
    }

}

function getReviewShoppingCart(){

    var url=urlPage+"reviewShoppingCart";

    $.get(url).done(processResponse)
        .fail(processFailure);
}


function getLoginPage(){
    $("#idTitlePage").innerText="Login"
    $("#idTitlePage").show();
    var url=urlPage+"login";
    $.get(url).done(processResponse)
        .fail(processFailure);
}

function callContinueShopping(){
    document.getElementById("idFormContinueShopping").action=urlPage+"home";
    document.getElementById("idFormContinueShopping").method="get";
    document.getElementById("idFormContinueShopping").submit();
}

function processResponse(response){
    $("#idListProduct").html(response)
    $("#idFormContinueShopping").show();
}

function processFailure(fail){
    alert("echec :"+fail);
}

function closeMessage2(){
    $("#idMessage2").hide();
}

function nextVersion(){
    $("#idMessage2").show();
}