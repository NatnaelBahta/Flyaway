package com.Servlets;

import com.Database.Dao;
import com.Model.User;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

// import com.database.Dao;

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = Logger.getLogger(Dao.class);
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("full_name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String dob=request.getParameter("dob");
		String phn=request.getParameter("phn");
		User  user = new User(email, password, name, dob, phn);
		
		try {
			Dao dataBase = new Dao();
			logger.info("AddFlight Execution Started");
			boolean result = dataBase.insertUser(user);
			HttpSession session=request.getSession();
			if(result) {
				session.setAttribute("message", "User Added Successfully! Please Login");
			}
			else {
				session.setAttribute("message","Error! Please Enter Again Valid Input");
			}
		} catch (ClassNotFoundException | SQLException e) {
			logger.error("Flights Insertion Unsuccessful");
			e.printStackTrace();
		}
		response.sendRedirect("userLogin.jsp");
	}

}
