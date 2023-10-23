<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding = "ISO-8859-1" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
<div class="container mt-5">
  <h3 class="text-center">${heading}</h3>
  <p class="text-center">${desc}</p>
  <h1 class="text-center">${msg}<h1>
  <h1 class="text-center">welcome  ${user.userName}</h1>

  </div>

</body>
</html>