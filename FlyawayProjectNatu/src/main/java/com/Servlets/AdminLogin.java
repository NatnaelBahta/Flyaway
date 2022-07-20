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


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Logger logger = Logger.getLogger(Dao.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Dao dataBase = new Dao();
            logger.info("AdminLogin Execution Started");
            if (dataBase.validateAdmin(email, password)) {
                response.sendRedirect("adminDashboard.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("message", "Error! Please Enter Valid Email & Password");
                response.sendRedirect("adminLogin.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            logger.error("Admin Login Unsuccessful");
            e.printStackTrace();
        }
    }
}
