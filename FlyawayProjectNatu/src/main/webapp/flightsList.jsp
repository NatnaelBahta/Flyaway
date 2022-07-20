<%@ page import="com.Model.Flights" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Flight List</title>
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


        #MoveFormToLeft {
            position: relative;
            left: 220px;
            overflow: auto;
            resize: both;
        }

    </style>
</head>
<body>
<div class="topnav">
    <a href="homePage.jsp">Home</a>
    <a href="userLogin.jsp" class="split">User Login or Signup </a>
</div>


<center>
<br>
<a href=homePage.jsp style="color:black;text-decoration:none;font-size:30px;font-weight:bold;">Flight List Page</a>
<br><br>
    <table border="1">
        <tr>
            <th> Flight Name </th>
            <th> Departure from </th>
            <th> Going to </th>
            <th> Departure Time </th>
            <th> Arrival Time </th>
            <th> Price </th>
        </tr>
                <%
      Object obj = session.getAttribute("flights");
      List<Flights> airlinesList = (List<Flights>)obj;

      if(airlinesList.size() > 0)
      {
    	  Iterator<Flights> ai = airlinesList.iterator();
    	  while(ai.hasNext())
    	  {
    		  Flights air = ai.next();
    		  %>
     <tr>
        <td><%=air.getFlightName()%></td>
         <td><%=air.getFrom()%></td>
        <td><%=air.getTo()%></td>
        <td><%=air.getDepartureTime()%></td>
        <td><%=air.getArrivalTime()%></td>
        <td><%=air.getPrice()%></td>
    </tr>
                <%
                        }
                    }

                %>
                </tr>
    </table>
    <div id="MoveFormToLeft">
        </P><a href=bookFlights.jsp class="split">Book Now</a></P>
    </div>
</center>



</body>
</html>