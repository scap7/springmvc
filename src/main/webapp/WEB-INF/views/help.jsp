<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding = "ISO-8859-1" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="ISO-8859-1">
       <title>HELP</title>
    </head>
    <body>
        <h1>Welcome to our help page</h1>
        <h1>feel free to contact us</h1>
        <% /*int con=(int)request.getAttribute("contact");*/

        %>
        <h1>Time is ${time}<%--<%=request.getAttribute("time")%>--%></h1>
        <h1>${contact}<%--<%=con%>--%></h1>
        <%--<h1>${marks}<h1>--%>
        <c:forEach var="item" items="${marks}" >
        <%--<h1>${item}</h1>--%>
        <h1><c:out value="${item}"></c:out></h1>

        </c:forEach>
    </body>

</html>