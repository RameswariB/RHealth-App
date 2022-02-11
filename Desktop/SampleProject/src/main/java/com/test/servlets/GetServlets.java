package com.test.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetServlets extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String val=req.getParameter("name");
		String htmlResponce = "<html><h3>welcome to the Http page </h3> <html>";
		PrintWriter writer = resp.getWriter();
		writer.write(htmlResponce+val);
		
	}

}
