package com.rHealth.servlets;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.text.MessageFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rHealth.beans.User;
import com.rHealth.dao.ApplicationDao;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/jsp/registration.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//colllect all the data
				String username= req.getParameter("username");
				String password= req.getParameter("password");
				String firstname= req.getParameter("fname");
				String lastname= req.getParameter("lname");
				String activity= req.getParameter("activity");
				int age = Integer.parseInt(req.getParameter("age"));
				
				//fill int the product bean
				User user = new User(password, username, firstname, lastname, age, activity);
				
				// call dao layer and save object in database
				Connection connection = (Connection)getServletContext().getAttribute("dbconnection");
				ApplicationDao dao = new ApplicationDao();
				int rows = dao.registerUser(user,connection);
				// prepare message according to the row
				String infoMessage = null;
				if (rows == 0) {
					infoMessage="Sorry, Error Occured!";
				}else {
					infoMessage="User was registed succesfully!!";
				}
				//write the product back to the page 
				String page = getHTMLString(req.getServletContext().getRealPath("/html/register.html"), infoMessage);
				resp.getWriter().write(page);
				
		
	}

	/**
	 * this methods read the HTML templates as a string and replace placeholders
	 * with the values and return the entire page as a string 
	 * @param filePath
	 * @param Products
	 * @return 
	 * @throws IOException
	 */
	public String getHTMLString (String filePath,String message) throws IOException {
		
		BufferedReader reader = new BufferedReader(new FileReader(filePath));
		
		String line ="";
		StringBuffer buffer = new StringBuffer();
		while ((line = reader.readLine()) != null) {
			buffer.append(line);
			
		}
		reader.close();
		String page =buffer.toString();
		page =MessageFormat.format(page,message);
		return page;
		
	}
}
