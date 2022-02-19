package com.rHealth.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rHealth.beans.Product;
import com.rHealth.dao.ApplicationDao;

@WebServlet("/search")
public class SearchServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/jsp/search.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String searchString = req.getParameter("searchtext").toString();
		req.getSession().setAttribute("search", searchString);
		ApplicationDao appDao= new  ApplicationDao();
		Connection connection = (Connection)getServletContext().getAttribute("dbconnection");
		List<Product> listOfProduct = appDao.searchProducts(searchString,connection);
		req.setAttribute("products", listOfProduct);
		req.getRequestDispatcher("/jsp/search.jsp").forward(req, resp);
		
	}

}
