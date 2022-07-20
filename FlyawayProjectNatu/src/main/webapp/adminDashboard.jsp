<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>admin Dashboard</title>
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
<div class="topnav">
    <a href=Logout class="split">Logout</a>
    <a href="addFlight.jsp" class="split">Add Flight </a>
    <a href="changePassword.jsp" class="split">Change Password</a>
</div>

<center>
    <h1>This is Admin Dashboard</h1>
</center>
</body>
</html>
