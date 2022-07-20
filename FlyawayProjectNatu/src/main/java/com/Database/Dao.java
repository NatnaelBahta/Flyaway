package com.Database;

import com.Model.Flights;
import com.Model.User;
import org.apache.log4j.Logger;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/*
                  To connect to MySql Database JDBC (Hibernet, JPA)
1, Register the Driver -> Class.forName(String className)throws ClassNotFoundException
2, Create connection ->  Connection con = DriverManager.getConnection(String url,String name,String password) throws SQLException
3, Create statement  ->  Statement st = con.createStatement();
4, Execute queries   ->  ResultSet rs = st.executeQuery(query);
5, Close connection  ->  con.close();
*/

public class Dao {
public Connection con = null;
public Statement st = null;
    Logger logger = Logger.getLogger(Dao.class);
public Dao() throws ClassNotFoundException, SQLException {
    Class.forName("com.mysql.cj.jdbc.Driver");
//        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "lidu!Jesus14");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","lidu!Jesus14");
    System.out.println("connection established with database");
    logger.info("Db Connection successeful");
    st = con.createStatement();
}



// Method to search all available flights
public List<Flights> searchFlights(String fromWhere, String goingTo, String departureDate) {

    List<Flights> flightList = new ArrayList<Flights>();

//    String query = "SELECT * FROM flyaway.flights where flight_departure='" + fromWhere + "' and flight_arrival='" + goingTo + "' and flight_date='" + departureDate + "'";
    String query = "SELECT * FROM flyaway.flights where flight_departure='" + fromWhere + "' and flight_arrival='" + goingTo + "' and flight_date='" + departureDate + "'";
    try {
        ResultSet result = st.executeQuery(query);

        while (result.next()) {

            String flightName = result.getString("flight_name");
            String flightDepartuer = result.getString("flight_departure");
            String flightArrival = result.getString("flight_arrival");
            String flightDate = result.getString("flight_date");
            String flightDepartureTime = result.getString("flight_departure_time");
            String flightArrivalTime = result.getString("flight_arrival_time");
            String flightPrice = result.getString("flight_price");

            Flights flighstDetail = new Flights(flightName, flightDepartuer,flightArrival,flightDate,flightDepartureTime,flightArrivalTime,flightPrice);
            flightList.add(flighstDetail);

            return flightList;
        }
    } catch (SQLException e) {
        logger.error("Flight Search Unsuccessful");
        e.printStackTrace();
    }
    return null;
}

   // Method to check user login
  public User validatUser(String email, String password) {
    User loginUser = null;
    String query = "select * from user where email='" + email + "' and password='" + password + "'";
    try {
        ResultSet result = st.executeQuery(query);
        if (result.next()) {
            String userEmai = result.getString("email");
            String userPassword = result.getString("password");
            String userName = result.getString("full_name");
            loginUser = new User(userEmai,userPassword, userName);
        }

        return loginUser;
    } catch (SQLException e) {
        logger.error("Login Validation Unsuccessful");
        e.printStackTrace();
    }

    return loginUser;
}

// Method to add user into user table
public boolean insertUser(User user)  {
    try {
    PreparedStatement state = con.prepareStatement("insert into user " + "(email, password, full_name, dob, phn) values (?,?,?,?,?)");

        state.setString(1, user.getEmail());
        state.setString(2, user.getPassword());
        state.setString(3, user.getName());
        state.setString(4, user.getDateOfBirth());
        state.setString(5, user.getPhoneNumber());

        state.executeUpdate();
        return true;
    } catch (SQLException e) {
        logger.error("User Registration Unsuccessful");
        e.printStackTrace();
    }
    return false;
}

// Method to check admin
public boolean validateAdmin(String email, String password) {

    try {
        ResultSet result = st.executeQuery("select * from admin where email='" + email + "' and password='" + password + "'");
        if (result.next())
            return true;
    } catch (SQLException e) {
        logger.error("Admin Validation is Unsuccessful");
        e.printStackTrace();
    }
    return false;
}

// Method to Change Password
public boolean changeAdminPassword(String email, String password) {

    try {
        ResultSet result = st.executeQuery("select * from admin where email='" + email + "'");
        if (!result.next()) {
            return false;
        }
        st.execute("update admin set password='" + password + "' where email='" + email + "'");
        return true;
    } catch (SQLException e) {
        logger.error("Password Change Unsuccessful");
        e.printStackTrace();
    }
    return false;
}

    // Method to Add Flights
    public boolean addFlights(Flights fli) {
        try {
            PreparedStatement stat = con
                    .prepareStatement("insert into flights" + "(flight_name, flight_departure, flight_arrival, flight_date, flight_departure_time, flight_arrival_time, flight_price) values (?,?,?,?,?,?,?)");

            stat.setString(1, fli.getFlightName());
            stat.setString(2, fli.getFrom());
            stat.setString(3, fli.getTo());
            stat.setString(4, fli.getDate());
            stat.setString(5, fli.getDepartureTime());
            stat.setString(6, fli.getArrivalTime());
            stat.setString(7, fli.getPrice());

            stat.executeUpdate();
            return true;
        } catch (SQLException e) {
            logger.error("Flight insertion unsuccessful");
            e.printStackTrace();
            return false;
        }
    }
}

