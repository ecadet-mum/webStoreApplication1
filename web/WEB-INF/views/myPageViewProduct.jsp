<%--
  Created by IntelliJ IDEA.
  User: Emmanuel Cadet
  Date: 7/16/2019
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <script src="<c:url value='/ressources/js/jquery.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/ressources/js/addToCart.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/ressources/js/myPageViewProduct.js'/>" type="text/javascript"></script>


    <link href="<c:url value="/ressources/css/productSearch2.css"/>" type="text/css" rel="stylesheet"/>



    <title>View Product details</title>


    <script src="<c:url value='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js'/>" type="text/javascript"></script>
    <script src="<c:url value='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'/>" type="text/javascript"></script>

</head>
<body>


<t:template title="My page">

<jsp:attribute name="head_area">
  <script>

  </script>
</jsp:attribute>



    <jsp:attribute name="body_Title">


    </jsp:attribute>

    <jsp:attribute name="body_area">
      <div id="idListProduct">
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
                                      <div class="image-Container">
                                          <img src="<c:url value='/ressources/images/${product.image}'/>"/>
                                      </div>
                                      <div class="product-Info">
                                          <div class="price-Info">
                                              <span class="regular-Price"><span>$</span>${product.price}</span>
                                              <span class="discount"></span>
                                              <span class="color-Info">2 colors</span>
                                          </div>
                                          <div class="name-Info">${product.name}</div>
                                          <div class="promo-Info">${product.description}</div>

                                      <div><input id="idNumProd" type="hidden" name="prodNum" value="${product.idProduct}"></div>
                                          <div><label id="idNameQuantity">Quantity : <input id="idNumberItem" type="number" name="numberItem" value="0"></label></div>
                                          <div><button id="idAddToCart" onclick="postProduct()">Add to cart</button></div>

                                      </div>
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
                                      Shopping Cart
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>


          </div>

      </div>
    </jsp:attribute>





</t:template>
<input type="hidden" id="idURL" value="${pageContext.servletContext.getInitParameter("urlPage")}"/>
<div id="idMessage">
    <p class="promo-Info">Please, enter the quantity of item you need</p>
    <button id="idClose" onclick="closeMessage()">Close</button>
</div>
</body>
</html>


















