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
import java.util.List;

// import com.database.Dao;

@WebServlet("/FlightSearch")
public class FlightSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = Logger.getLogger(Dao.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departureDate =request.getParameter("departure");

		try {
			logger.info("Flight List Execution Started");
			Dao dataBase = new Dao();

			List<Flights> flightsList = dataBase.searchFlights(from, to, departureDate);
			HttpSession session=request.getSession();
			session.setAttribute("flights", flightsList);
		} catch (ClassNotFoundException | SQLException e) {
			logger.error("Flights Search Unsuccessful");
			e.printStackTrace();
		}
		response.sendRedirect("flightsList.jsp");
	}
}
