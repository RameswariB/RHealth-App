package com.test.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.test.beans.Product;
import com.test.dao.ApplicationDao;

@WebServlet("/addProducts")
public class ProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		// get the HTTPSession object
		HttpSession sesion = req.getSession();
		//create a class for array list of products
		List<String> cart = (List<String>) sesion.getAttribute("cart");
		if (cart == null) {
			cart = new ArrayList<>();
		}
		//add the selected items to the cart
		if (req.getParameter("product") != null) {
			cart.add(req.getParameter("product"));
		}
		sesion.setAttribute("cart", cart);
		//get search criteria from search servlet
		String search = (String) sesion.getAttribute("search");
		Connection connection = (Connection)getServletContext().getAttribute("dbconnection");
		//get the result from dao
		ApplicationDao dao = new ApplicationDao();
		List<Product> products = dao.searchProducts(search,connection);
		// set the result in the request scope
		req.setAttribute("products", products);
		// forward to jsp page
		req.getRequestDispatcher("/html/search.jsp").forward(req, resp);
		
	}
}
