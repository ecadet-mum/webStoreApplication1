var urlPage;
$(function () {
    urlPage=$("#idURL").val();

    //getShoppingCart();
    //adjustHeightOfPage('1');
    //$("#idHeader").hide();
    //$("#idTitlePage").hide();


})


function getShoppingCart(){
    var url=urlPage+"addCart";

    $.get(url).done(processResponse2)
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

