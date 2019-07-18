<%--
  Created by IntelliJ IDEA.
  User: Emmanuel Cadet
  Date: 7/15/2019
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>View Product details</title>
    <script src="<c:url value='/ressources/js/jquery.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/ressources/js/addToCart.js'/>" type="text/javascript"></script>

    <link href="<c:url value="/ressources/css/viewProduct.css"/>" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="idCenter">

    <div class="row">
        <div class="col-xs-12">
            <div class="tm-flex">
                <div class="col-lg-6 tm-white-header-container-outer tm-margin-b tm-2-col-left">
                    <div class="tm-bg-white tm-white-header-container">
                        <h2 class="tm-text-title tm-text-title-small">List of Items</h2>
                    </div>
                    <div class="tm-bg-dark-blue text-xs-left tm-textbox tm-textbox-padding tm-white-header-body tm-white-border tm-2-col-equal-height">
                        <!---Here-->
                        <div id="prodDivView">
                            <div >
                                <img src="<c:url value='/ressources/images/${product.image}'/>"/>
                            </div>
                            <div class="price-Info">
                                <span class="regular-Price"><span>$</span>${product.price}</span>
                                <span class="discount"></span>
                                <span class="color-Info">2 colors</span>
                            </div>
                            <div>${product.name}</div>
                            <div><input id="idNumProd" type="hidden" name="prodNum" value="${product.idProduct}"></div>
                            <div><button id="idAddToCart" onclick="postProduct()">Add to cart3</button></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 tm-white-header-container-outer tm-margin-b tm-2-col-right">
                    <div class="tm-bg-white tm-white-header-container">
                        <h2 class="tm-text-title tm-text-title-small">Cart Items</h2>
                    </div>
                    <div class="tm-bg-dark-blue text-xs-left tm-textbox tm-textbox-padding tm-white-header-body tm-white-border tm-2-col-equal-height">
                        <!---Here-->
                        <div id="idCart">
                            Shopping Cart.....
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<input type="hidden" id="idURL" value="${pageContext.servletContext.getInitParameter("urlPage")}"/>
</body>
</html>
