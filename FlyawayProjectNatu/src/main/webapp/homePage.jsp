<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.Model.User" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>home</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* For head text */
        h1 {
            font-size: 55px;
        }

        /* For Background image */
        .bg-img {
            /* The image used */
            background-image: url("BackgroundImage.jpeg");

            height: 800px;

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
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

        #FromLable {
            max-width: 600px;
            min-width: 150px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #To {
            max-width: 600px;
            min-width: 150px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #Date {
            max-width: 300px;
            min-width: 100px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #Passanger {
            max-width: 70px;
            min-width: 60px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        /* Search Button */
        .searchButton {
            background-color: blue;
            color: white;
            padding: 12px 10px;
            margin: 8px 5px;
            border: none;
            cursor: pointer;
            max-width: 150px;
            min-width: 100px;
            opacity: 0.9;
            border-radius: 20px;
        }

        .searchButton:hover {
            background-color: limegreen;
            color: black;
        }

            .Searchcontainer {
            max-width: 600px;
            min-width: 400px;
            border: 7px solid blue;
            border-radius: 20px;
            padding: 30px;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
        }
    </style>
</head>
<body>
<div class="bg-img">


    <%

        User user = (User)session.getAttribute("user");
        if (user != null) {
    %>

    <div class="topnav">
        <a class="active" href="#home">Home</a>
        <a href="Logout" class="split">Logout</a>
    </div>
    <center>
        <p style="color:blue; font-size: 19px;">Welcome <%=user.getName()%>!</p>
    </center>
    <br><br>

    <center>
        <h1>FLYAWAY</h1>
        <h2>YOUR FLIGHT IS ONE CLICK AWAY.</h2>
    </center>

    <div class="Searchcontainer">
        <form action=FlightSearch method=post>
            <label><b>From : </b></label><input type=text name=from id="FromLable">
            <label for=to><b><b>To </b></b></label> <input type=text name=to id="To">
            <label for=Date><b>Date : </b></label> <input type=date name=departure id="Date"><br><br>
            <label for=Passanger><b>Passenger : </b></label> <input type=number name=travellers id="Passanger"><br><br>
            <center>
                <button type="submit" class="searchButton"><b>Search</b></button>
            </center>
        </form>
    </div>
</div>
    <%
    }else{
    %>

    <div class="topnav">
        <a class="active" href="#home">Home</a>
        <a href="userLogin.jsp" class="split">User Login or SignUp</a>
        <a href="adminLogin.jsp" class="split">Admin Login</a>
    </div>

    <center>
        <h1>FLYAWAY</h1>
        <h2>YOUR FLIGHT IS ONE CLICK AWAY.</h2>
    </center>


    <div class="Searchcontainer">
        <form action=FlightSearch method=post>
            <label><b>From : </b></label><input type=text name=from id="FromLable">
            <label for=to><b><b>To </b></b></label> <input type=text name=to id="To">
            <label for=Date><b>Date : </b></label> <input type=date name=departure id="Date"><br><br>
            <label for=Passanger><b>Passenger : </b></label> <input type=number name=travellers id="Passanger"><br><br>
            <center>
                <button type="submit" class="searchButton"><b>Search</b></button>
            </center>
        </form>
    </div>
</div>
<%
    }
%>
</body>
</html>
