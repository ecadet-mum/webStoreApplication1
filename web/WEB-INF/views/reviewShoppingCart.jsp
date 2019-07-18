<%@ page import="modele.ShoppingCart" %><%--
  Created by IntelliJ IDEA.
  User: Emmanuel Cadet
  Date: 7/16/2019
  Time: 3:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="/ressources/css/viewShoppingCart.css"/>" type="text/css" rel="stylesheet"/>

    <title>Review Shopping Cart</title>

</head>
<body>
<div><h4 id="idShoppingView">Checking out</h4></div>
<div><span class="total">Total items : ${sessionScope.shoppingCart.totalItem}</span><span class="total"> / Total amount :$ ${sessionScope.shoppingCart.totalAmount}</span></div>
<div id="idShopCenter">
    <div id="idShopProcess">

        <button id="idProceedCheckout" onclick="nextVersion()" class="buttonCart">Proceed checkout</button>

        <form id="idFormContinueShopping" action="${pageContext.servletContext.getInitParameter('urlPage')}productSearch"  class="formCart">
            <button id="idContinueShopping" onclick="callContinueShopping()" class="buttonCart">Continue shopping</button>
        </form>
    </div>
        <div id="idShopRight">

            <c:forEach items="${sessionScope.shoppingCart.listProd}" var="sp">


                <div class="items-Container2">
                    <div class="image-Container2">
                        <img src="<c:url value='/ressources/images/${sp.image}'/>"/>
                    </div>
                    <div class="product-Info2">
                        <div class="price-Info2">
                            <span class="regular-Price2">${sp.price}</span>
                            <span class="discount2"></span>
                            <span class="color-Info2">Qt:${sp.quantityItem}</span>
                        </div>
                        <div class="name-Info2">${sp.name}</div>
                        <div class="promo-Info">${sp.description}</div>

                    </div>
                </div>

            </c:forEach>
        </div>



</div>

<div id="idMessage">
    <p class="promo-Info">Will be implemented in next version...</p>
    <button id="idClose2" onclick="closeMessage2()">Close</button>
</div>
</body>
</html>
