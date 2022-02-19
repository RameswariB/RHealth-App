package com.rHealth.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rHealth.dao.ApplicationDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//get the use name from login
				String username = req.getParameter("username");
				String password = req.getParameter("password");
				ApplicationDao dao = new ApplicationDao();
				System.out.println(username +",,"+password);
				Connection connection = (Connection)getServletContext().getAttribute("dbconnection");
				boolean isValidUser = dao.ValidateUser(username, password,connection);
				
				// check if the user is valid user or not
				if (isValidUser) {
					//set up a session
					HttpSession session = req.getSession();
					//set the username as an attribute
					session.setAttribute("username", username);
					req.getRequestDispatcher("/jsp/profile.jsp").forward(req, resp);
				}else {
					String errorMsg = "Invalid Credential, Please login again!!";
					req.setAttribute("error", errorMsg);
					req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
				}
				
		
	}
}
