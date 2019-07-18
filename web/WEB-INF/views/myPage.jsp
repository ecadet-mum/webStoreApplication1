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
    <script src="<c:url value='/ressources/js/myPage.js'/>" type="text/javascript"></script>

        <script src="<c:url value='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'/>" type="text/javascript"></script>

    <title>Title</title>
</head>
<body>


<t:template title="My page">

<jsp:attribute name="head_area">
  <script>

  </script>
</jsp:attribute>
    <jsp:attribute name="body_Title">
        <div id="idTitlePage">
            <div class="tm-home-title-container">
                <h2 class="tm-text-title text-xs-center tm-home-title">List of product</h2>
            </div>
        </div>

    </jsp:attribute>

    <jsp:attribute name="body_area">
      <div id="idListProduct">
        
      </div>
    </jsp:attribute>





</t:template>
<input type="hidden" id="idURL" value="${pageContext.servletContext.getInitParameter("urlPage")}"/>
</body>
</html>


