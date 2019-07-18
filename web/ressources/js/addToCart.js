var urlPage
$(function () {
    urlPage=$("#idURL").val();


    $("#idContinueShopping").click();
    //$("#idCheckOut").click(callCheckOutForm);
    getShoppingCart();


})


function closeMessage(){
    $("#idMessage").hide();
}


function postProduct(){
    var qt=$("#idNumberItem").val();

    if(qt<=0){
        $("#idMessage").show();
    }else{
        var varnumberItem=$("#idNumberItem").val();
        var valIdProduct=$("#idNumProd").val();
        var valShoppingCart=$("#idShoppingCart").val();

        var url=urlPage+"addCart";

        $.post(url,
            {"idProduct" : valIdProduct,
                "numberItem" : varnumberItem,
                "shoppingCart": valShoppingCart
            }
        ).done(processResponse2)
            .fail(processFailure);
    }


}


function getShoppingCart(){

    var url=urlPage+"addCart";

    $.get(url).done(processResponse)
        .fail(processFailure);
}

function processResponse(response){
    $("#idCart").html(response);

}

function processResponse2(response){
    $("#idCart").html(response);

}

function processFailure(fail){
    alert("echec :"+fail);
}