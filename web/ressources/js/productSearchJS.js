var urlPage;
$(function () {
    urlPage=$("#idURL").val();
    getShoppingCart();


})

function processResponse(response){
    var contTitle=$(".titleShoppingCart").val();
    $("#divRight").html("<h4 id='idShop'>Shopping Cart</h4>"+response)
    $("#idFormContinueShopping").hide();
}

function processResponseViewProduct(response){

    $("#idTitlePage").hide();
    $("#idListProduct").html(response)

}

function postViewProductDetail(){


    var valIdProduct=$("input[name=idProduct]").val();

    var url=urlPage+"viewProductDetail";

    $.post(url,
        {"idProduct" : valIdProduct
        }
    ).done(processResponseViewProduct)
        .fail(processFailure);


}

function getShoppingCart(){

    var url=urlPage+"addCart";

    $.get(url).done(processResponse)
        .fail(processFailure);
}

function processFailure(fail){
    alert("echec :"+fail);
}
