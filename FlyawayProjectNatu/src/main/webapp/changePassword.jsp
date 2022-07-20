<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>admin</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
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


        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /*!* Full-width input fields *!*/
        /*input[type=text], input[type=password] {*/
        /*    width: 70%;*/
        /*    padding: 15px;*/
        /*    margin: 5px 0 22px 0;*/
        /*    display: inline-block;*/
        /*    border: none;*/
        /*    background: #f1f1f1;*/
        /*}*/

        /*input[type=text]:focus, input[type=password]:focus {*/
        /*    background-color: #ddd;*/
        /*    outline: none;*/
        /*}*/

        /* For email fields */
        #Email {
            width: 350px;
            height: 35px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
            overflow: auto;
            resize: both;
        }

        #Password {
            width: 350px;
            height: 35px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
            overflow: auto;
            resize: both;
        }

        #RepeatPassword {
            width: 350px;
            height: 35px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
            overflow: auto;
            resize: both;
        }
        /* Set a style for the submit button */
        .RegitrationButton {
            background-color: blue;
            color: white;
            font-size: 16px;
            padding: 12px 10px;
            margin: 8px 5px;
            border: none;
            cursor: pointer;
            max-width: 180px;
            min-width: 100px;
            opacity: 0.9;
            border-radius: 20px;
        }

        .RegitrationButton:hover {
            background-color: limegreen;
            color: black;
        }
        /* Add a blue text color to links */
        a {
            color: dodgerblue;
        }

        #signinPosition {
            position: relative;
            left: 115px;

        }
        /* Modal Content/Box */
        .modal-content {
            background-color: cornflowerblue;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 3px solid #888;
            width: 400px;
            min-width:200px;
        }

        #MoveFormToLeft {
            position: relative;
            left: 25px;
            overflow: auto;
            resize: both;
        }
    </style>
</head>
<body>
<div class="topnav">
    <a href="adminDashboard.jsp">Admin Home</a>
    <a href=Logout class="split">Logout</a>
</div>
    <center>
        <h1>Admin Page</h1>
        <%
            String message=(String)session.getAttribute("message");
            if(message!=null){
        %>
        <p style="color:blue; text-blink: 12; font-size: 16px;"><%=message %></p>
        <%
                session.setAttribute("message", null);
            }
        %>
    </center>

<div class="modal-content">
    <div id="MoveFormToLeft">
        <form action=ChangePassword method=post>
            <h1>Change Password</h1>
            <label for=email><b>Email </b></label><br> <input type=text placeholder="Enter Email" name=email id="Email" required><br><br>
            <label for=Password><b>New Password </b></label> <br> <input type=text placeholder="Enter New Password" name=email id="Password" required><br><br>
            <button type="submit" id="signinPosition" class="RegitrationButton">Submit</button>
        </form>
    </div>

</div>
<%--</center>--%>
</body>
</html>
