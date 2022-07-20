<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.Model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Confirmation</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* For head text */
        h1 {
            font-size: 70px;
        }

        /* For nav bar */
        .topnav {
            overflow: hidden;
            background-color: cornflowerblue;
        }

        /* For nav bar */
        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        /* For nav bar right-aligned navigation bar */
        .topnav a.split {
            float: right;
            color: white;
        }

        /* For nav bar */
        .topnav a:hover {
            background-color: dodgerblue;
            color: black;
        }

        .topnav a.active {
            background-color: dodgerblue;
            color: white;
        }

    </style>
</head>
<body>

<%
    User user = (User)session.getAttribute("user");
    if (user == null) {
%>
<div class="topnav">
    <a href="homePage.jsp">Home</a>
    <a href=userLogin.jsp class="split">Login</a>
</div>
<center>
    <h2>Booking Confirmation</h2>

    <p align="center"  style="color:Blue;font-size:60px;font-weight:bold">To Book Flight, Please Login First </p>
</center>
<%
}else{
%>

<div class="topnav">
    <a href="homePage.jsp">Home</a>
    <a href=Logout class="split">Logout</a>
</div>
<center>
    <p align="center"  style="color:Blue;font-size:60px;font-weight:bold">Booking Successful!</p>
</center>
<%
    }
%>
</body>
</html>

