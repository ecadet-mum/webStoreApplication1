var urlPage;
$(function () {
    urlPage=$("#idURL").val();
    getShoppingCart();



})

function processResponse(response){
    $("#divRight").html(response)
    $("#idFormContinueShopping").hide();
}


function getShoppingCart(){

    var url=urlPage+"addCart";

    $.get(url).done(processResponse)
        .fail(processFailure);
}

function processFailure(fail){
    alert("echec :"+fail);
}

function callCheckOutForm(){

    document.getElementById("idFormCheckOut").action=urlPage+"login";
    document.getElementById("idFormCheckOut").method="get";
    document.getElementById("idFormCheckOut").submit();
}

