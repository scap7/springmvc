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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
<div class="container mt-5 ">
    <h3 class="text-center">${heading}</h3>
    <p class="text-center">${desc}</p>
    <form action="processform" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1" >Email address</label>
            <input type="email"
                   class="form-control"
                   id="exampleInputEmail1"
                   aria-describedby="email help"
                   placeholder="Enter your email"
                   name="userEmail"
            >
            <small id="emailhelp" class="form-text text-muted">we'll never share your email with anyone</small>

        </div>
        <div class="form-group">
            <label for="userName">name</label>
            <input type="text"
                   class="form-control"
                   id="userName"
                   aria-describedby="email help"
                   placeholder="Enter your name"
                    name="userName"
            >

        </div>
        <div class="form-group">
            <label for="userPassword">user password</label>
            <input type="password"
                   class="form-control"
                   id="userPassword"  aria-describedby="email help"
                   placeholder="Enter password"
                   name="userPassword"
            >

        </div>
        <div class="container text-center">
            <button type="submit" class="btn btn-success">sign up</button>

        </div>



    </form>


</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>