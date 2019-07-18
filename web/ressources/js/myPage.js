var urlPage;
$(function () {
    urlPage=$("#idURL").val();
    getListProduct();




})

function processResponse(response){
    $("#idListProduct").html(response)
    $("#idFormContinueShopping").hide();
}


function getListProduct(){

    var url=urlPage+"productSearch";

    $.get(url).done(processResponse)
        .fail(processFailure);
}

function processFailure(fail){
    alert("echec :"+fail);
}
