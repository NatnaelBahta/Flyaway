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


@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Logger logger = Logger.getLogger(Dao.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Dao dataBase = new Dao();
            logger.info("UserLogin Execution Started");

            User user = dataBase.validatUser(email, password);
            HttpSession session = request.getSession();

            if (user != null) {
                session.setAttribute("user", user);
                response.sendRedirect("homePage.jsp");
            } else {
                session.setAttribute("message", "Error!  Enter Valid Email & Password");
                response.sendRedirect("userLogin.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            logger.error("Login Unsuccessful");
            e.printStackTrace();
        }
    }
}
