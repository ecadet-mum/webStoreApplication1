<%@ page import="java.util.HashMap" %>
<%@ page import="modele.Product" %><%--
  Created by IntelliJ IDEA.
  User: Emmanuel Cadet
  Date: 7/15/2019
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%


%>
<html>
<head>
    <title>Product Search</title>

    <script src="<c:url value='/ressources/js/jquery.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/ressources/js/productSearchJS.js'/>" type="text/javascript"></script>


    <link href="<c:url value="/ressources/css/addCart.css"/>" type="text/css" rel="stylesheet"/>

    <link href="<c:url value='/ressources/css/productSearch.css'/>" rel="stylesheet"/>
</head>
<body>
<div><h1>List of Product</h1></div>
<div id="divPrincipal">
    <div id="divLeft">
        Left position
    </div>
    <div id="divMain">

        <c:forEach items="${requestScope.listProduct}" var="p">


            <div class="items-Container">
                <div class="image-Container">
                    <img src="<c:url value='/ressources/images/${p.value.image}'/>"/>
                </div>
                <div class="product-Info">
                    <div class="price-Info">
                        <span class="regular-Price">${p.value.price}</span>
                        <span class="discount"></span>
                        <span class="color-Info">2 colors</span>
                    </div>
                    <div class="name-Info">${p.value.name}</div>
                    <div class="promo-Info">${p.value.description}</div>
                    <form action="${pageContext.servletContext.getInitParameter('urlPage')}viewProductDetail"  method="post">
                    <div><input id="idNumProd" type="hidden" name="idProduct" value="${p.key}"></div>
                        <div><button id="idView">View product details</button></div>

                    </form>
                </div>
            </div>

        </c:forEach>

    </div>

    <div id="divRight">
        ....
    </div>
</div>
<input type="hidden" id="idURL" value="${pageContext.servletContext.getInitParameter("urlPage")}"/>
</body>
</html>
