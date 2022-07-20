package com.Servlets;

import com.Database.Dao;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = Logger.getLogger(Dao.class);
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		try {
			logger.info("ChangePassword Execution Started");
			Dao dataBase = new Dao();
			HttpSession session=request.getSession();
			if(dataBase.changeAdminPassword(email,password)) {
				session.setAttribute("message", "Password Changed Successfully");
			}
			else {
				session.setAttribute("message", "Error!  Enter Valid Email & Password");

			}
		} catch (ClassNotFoundException | SQLException e) {
			logger.error("Password Change Unsuccessful");
			e.printStackTrace();
		}
		response.sendRedirect("changePassword.jsp");
	}
}
