package com.test.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.beans.Order;
import com.test.dao.ApplicationDao;

@WebServlet("/orderHistory")
public class OrderHistory extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// get user name from the session
		String username = (String) req.getSession().getAttribute("username");
		//call dao to retireve order history
		ApplicationDao dao =new ApplicationDao();
		List<Order> orders =dao.getOrder(username);
		
		//set order data in request
		req.setAttribute("orders", orders);
		req.getRequestDispatcher("/html/home.jsp").forward(req, resp);
		
		
	}

}
