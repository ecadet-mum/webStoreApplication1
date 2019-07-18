var urlPage
$(function () {
    urlPage = $("#idURL").val();
    $("#idHeader").hide();
    //var he=$("#idHeader").html();
    //$("#idTitlePage2").html(he);
    //$("#idLoginButton").click(getResultLoginPage)
})

function getResultLoginPage(){



    var valUser=$("#idUserName").val();
    var valPassword=$("#idPassword").val();

    var url=urlPage+"login";

    $.post(url,
        {"user" : valUser,
            "password" : valPassword
        }
    ).done(processResponse)
        .fail(processFailure);
}


function processResponse(response){
    adjustHeightOfPage('1');

//<h2 class="tm-text-title text-xs-center tm-home-title">List of product</h2>

    $("#idListProduct").html(response)
    $("#idFormContinueShopping").show();
}

function processFailure(fail){
    alert("echec :"+fail);
}
