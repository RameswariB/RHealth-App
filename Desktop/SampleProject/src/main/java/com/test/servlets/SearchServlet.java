package com.test.servlets;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.text.MessageFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.beans.Product;
import com.test.dao.ApplicationDao;

@WebServlet("/search")
public class SearchServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String searchString =req.getParameter("search");
		req.getSession().setAttribute("search", searchString);
		Connection connection = (Connection)getServletContext().getAttribute("dbconnection");
		ApplicationDao dao= new ApplicationDao();
		List<Product> products = dao.searchProducts(searchString,connection);
		//write the product back to the page 
//		String page = getHTMLString(req.getServletContext().getRealPath("/html/search.html"), products);
//		resp.getWriter().write(page);
		req.setAttribute("products", products);
		req.getRequestDispatcher("/html/search.jsp").forward(req, resp);
		
	}
	
	/**
	 * this methods read the HTML templates as a string and replace placeholders
	 * with the values and return the entire page as a string 
	 * @param filePath
	 * @param Products
	 * @return 
	 * @throws IOException
	 */
	public String getHTMLString (String filePath,List<Product> products) throws IOException {
		
		BufferedReader reader = new BufferedReader(new FileReader(filePath));
		
		String line ="";
		StringBuffer buffer = new StringBuffer();
		while ((line = reader.readLine()) != null) {
			buffer.append(line);
			
		}
		reader.close();
		String page =buffer.toString();
		page =MessageFormat.format(page, products.get(0).getProductImgPath(),
				products.get(1).getProductImgPath(),
				products.get(2).getProductImgPath(),
				products.get(0).getProductName(),products.get(1).getProductName(),
				products.get(2).getProductName(),0);
		return page;
		
	}
	 
}

