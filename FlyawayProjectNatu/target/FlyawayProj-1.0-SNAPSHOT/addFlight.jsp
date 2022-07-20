<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Flight</title>
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
            font-size: 20px;
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
        /* For nav bar right-aligned navigation bar */
        .topnav a.split {
            float: right;
            color: white;
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Set a style for the submit button */
        .AddButton {
            background-color: blue;
            color: white;
            font-size: 16px;
            padding: 10px 15px;
            margin: 8px 5px;
            border: none;
            cursor: pointer;
            max-width: 300px;
            min-width: 100px;
            opacity: 0.9;
            border-radius: 20px;
        }

        .AddButton:hover {
            background-color: limegreen;
            color: black;
        }

        #Register {
            position: relative;
            left: 550px;

        }

        #MoveFormToLeft {
            position: relative;
            left: 30px;

        }

        /* Add a blue text color to links */
        a {
            color: dodgerblue;
        }

        /* Modal Content/Box */
        .addFlightContainer {
            background-color: cornflowerblue;
            margin: 7% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 3px solid #888;
            max-width: 700px;
            min-width: 200px;
        }


        #AirlineName {
            max-width: 250px;
            min-width: 150px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #To {
            max-width: 250px;
            min-width: 150px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #From {
            max-width: 250px;
            min-width: 150px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #Date {
            max-width: 200px;
            min-width: 100px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #Time {
            max-width: 200px;
            min-width: 100px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        #Price {
            max-width: 150px;
            min-width: 100px;
            height: 25px;
            border: none;
            border-radius: 3px;
            padding-left: 8px;
        }

        hr {
            max-width: 650px;
            min-width: 200px;
            border-color: black;
            border-radius: initial;
            font-weight:bold;
        }

        h2{
            position: relative;
            left: 30px;
            font-size: 30px;

        }
    </style>
</head>
<body>
<div class="topnav">
    <a href="adminDashboard.jsp">Home</a>
    <a href=Logout class="split">Logout</a>
</div>

<center>
    <h1>Admin Page</h1>
</center>

<center>
    <%
        String message=(String)session.getAttribute("message");
        if(message!=null){
    %>
    <p style="color:red; font-size: 16px;"><%=message %></p>
    <%
            session.setAttribute("message", null);
        }
    %>
</center>

<div class="addFlightContainer">

    <h2>Add Flight Detail</h2>
    <hr>
    <div id="MoveFormToLeft">

        <form action=AddFlight method=post>

            <label for=to><b>Aireline name : </b></label> <input type=text name=name id="AirlineName" required><br>
            <label for=to><b>From where : </b></label><input type=text name=from id="From" required><br>
            <label for=to><b>Going to : </b></label><input type=text name=to id="To" required><br>
            <label for=date><b> Departing time :</b></label> <input type=time name=departure_time id="Time" required>
            <label for=date><b> Arrival time :</b></label> <input type=time name=arrival_time id="Time" required><br><br>
            <label for=date><b> Departing date :</b></label> <input type=date name=departure id="Date" required><br><br>
            <label for=price><b> Ticket price:</b></label> <input type=number name=price id="Price" required>
            <center>
                <button type="submit" class="AddButton"><b>Add</b></button>
            </center>
        </form>
    </div>
</div>

</body>
</html>
