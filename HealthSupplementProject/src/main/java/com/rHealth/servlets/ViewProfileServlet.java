package com.rHealth.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rHealth.beans.User;
import com.rHealth.dao.ApplicationDao;

@WebServlet("/getProfileDetails")
public class ViewProfileServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = (String) req.getSession().getAttribute("username");
		
		//call the dao method and get the profile 
		ApplicationDao  dao= new ApplicationDao();
		Connection connection = (Connection)getServletContext().getAttribute("dbconnection");
		User user = dao.getProfileDetails(username,connection);
		Map<String, Double> weightSummary = new HashMap<>();
		weightSummary.put("January", 67.9);
		weightSummary.put("February", 65.9);
		weightSummary.put("March", 64.8);
		System.out.println("Username"+user.getUserName()+"age is "+user.getAge());
		//store all the info in a request object
		req.setAttribute("user", user);
		req.setAttribute("weightSummary", weightSummary);
		req.getRequestDispatcher("/jsp/profile.jsp").forward(req, resp);
	}
	  

}
