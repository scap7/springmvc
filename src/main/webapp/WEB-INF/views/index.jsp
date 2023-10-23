<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding = "ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Home Page</title>
    </head>
    <body>
        <h1>this is home page</h1>
        <h1>called by home Controller</h1>
        <h1>url/home</h1>
        <%String name=(String) request.getAttribute("name");%>
        <% int id=(int)request.getAttribute("id"); %>
        <%String[] list=(String[])request.getAttribute("f");%>
        <%for(String s:list){
        %>

       <h1><%=s%><h1>
       <%
       }%>

        <h1>name is <%=name%><h1>
        <h1>Id : <%=id%><h1>


    </body>
</html>