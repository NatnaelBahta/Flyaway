package com.Servlets;

import com.Database.Dao;
import com.Model.Flights;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/AddFlight")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = Logger.getLogger(Dao.class);
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String departure = request.getParameter("departure");
		String departureTime = request.getParameter("departureTime");
	    String arrivalTime = request.getParameter("arrivalTime");
		String price=request.getParameter("price");

		Flights fli = new Flights(name,from,to,departure,departureTime,arrivalTime,price);
		
		try {
			Dao dataBase = new Dao();
			logger.info("AddFlight Execution Started");
			HttpSession session = request.getSession();
			if(dataBase.addFlights(fli)) {
				session.setAttribute("message", "Flight Added Successfully");
			}
			else {
				session.setAttribute("message", "Error! Please Enter Valid Input");
			}
		} catch (ClassNotFoundException | SQLException e) {
			logger.error("Flights Insertion Unsuccessful");
			e.printStackTrace();
		}
		response.sendRedirect("addFlight.jsp");
	}
}
