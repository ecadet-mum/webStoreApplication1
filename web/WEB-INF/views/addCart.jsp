<%--
  Created by IntelliJ IDEA.
  User: Emmanuel Cadet
  Date: 7/15/2019
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>AddCart</title>
    <script src="<c:url value='/ressources/js/jquery.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/ressources/js/shoppingCart.js'/>" type="text/javascript"></script>

    <link href="<c:url value="/ressources/css/addCart.css"/>" type="text/css" rel="stylesheet"/>
</head>
<body>

<div>

    <div class="divMainShopping">
        <div id="idListItem">
            <div><span class="total">Total items : ${requestScope.shoppingCart.totalItem}</span><span class="total"> / Total amout :$ ${requestScope.shoppingCart.totalAmount}</span></div>
            <c:forEach items="${requestScope.shoppingCart.listProd}" var="sp">

                <hr/>
                <div class="items-Container2">
                    <div class="image-Container2">
                        <img src="<c:url value='/ressources/images/${sp.image}'/>"/>
                    </div>
                    <div class="product-Info2">
                        <div class="price-Info2">
                            <span class="regular-Price2"><span>$</span>${sp.price}</span>
                            <span class="discount2"></span>
                            <span class="color-Info2">Qt:${sp.quantityItem} </span>
                        </div>
                        <div class="name-Info2">${sp.name}</div>
                        <%--<div class="promo-Info">${sp.description}</div>--%>

                    </div>
                </div>

            </c:forEach>
        </div>
        <div>

                <button id="idCheckOut" onclick="callCheckOutFormNew()" class="buttonCart">Checkout</button>

             <form id="idFormContinueShopping"  class="formCart">
                 <button id="idContinueShopping" onclick="callContinueShopping()" class="buttonCart">Continue shopping</button>
             </form>
        </div>
    </div>
</div>
<div><input type="hidden" id="idLogin" value="<%=request.getSession().getAttribute("login")%>"/></div>
</body>
</html>
