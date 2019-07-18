<%--
  Created by IntelliJ IDEA.
  modele.User: Emmanuel Cadet
  Date: 7/11/2019
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Homework Servlet 2</title>

    <script src="<c:url value='/ressources/js/jquery.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/ressources/js/loging.js'/>" type="text/javascript"></script>
  <link href="<c:url value='/ressources/css/index.css'/>" rel="stylesheet"/>
</head>
<body>
<div id="centerDiv">
  <% Cookie[] cok=request.getCookies(); String usr=""; String remember=null;
    for(Cookie c: cok){
      if(c.getName().equals("userName")){
        usr=c.getValue();
      }
      if(c.getName().equals("rememberMe")){
        remember=c.getValue();
      }

    }%>
 <!-- <form action="${pageContext.servletContext.getInitParameter("urlPage")}login" method="post">-->
    <div><label>Username : <input type="text" id="idUserName" name="user" value="<%=usr%>"/> </label></div>
    <div><label>Password : <input type="password" id="idPassword" name="password"/> </label></div>
    <div><button id="idLoginButton" onclick="getResultLoginPage()" class="buttonCart">Login </button> <label class="lableName"> <input type="checkbox"  name="rememberMe" <%if(remember!=null){%>checked="checked"<%}%>> Remember me </label></div>
    <div></div>
 <!-- </form>-->


</div>
<input type="hidden" id="idURL" value="${pageContext.servletContext.getInitParameter("urlPage")}"/>

<div id="idHeader">
  <div class="tm-home-title-container">
    <h2 class="tm-text-title text-xs-center tm-home-title">List of product</h2>
  </div>
</div>
</body>
</html>
