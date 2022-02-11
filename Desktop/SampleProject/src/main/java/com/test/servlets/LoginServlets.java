package com.test.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.dao.ApplicationDao;

@WebServlet("/login")
public class LoginServlets extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//dispatch to request login .jsp 
		RequestDispatcher dispatcher = req.getRequestDispatcher("/html/login.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		//get the use name from login
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		ApplicationDao dao = new ApplicationDao();
		
		boolean isValidUser = dao.validateUser(username, password);
		
		// check if the user is valis user or not
		if (isValidUser) {
			//set up a session
			HttpSession session = req.getSession();
			//set the username as an attribute
			session.setAttribute("username", username);
			req.getRequestDispatcher("/html/home.jsp").forward(req, resp);
		}else {
			String errorMsg = "Invalid Credential, Please login again!!";
			req.setAttribute("error", errorMsg);
			req.getRequestDispatcher("/html/login.jsp").forward(req, resp);
		}
		
	}
}
