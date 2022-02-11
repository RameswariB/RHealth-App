package com.test.listeners;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.test.dao.DBConnection;

public class ApplicationListerner implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		Connection connection = (Connection) sce.getServletContext().getAttribute("dbconnection");
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {


		Connection connection = DBConnection.getConnectionToDatabase();
		sce.getServletContext().setAttribute("dbconnection", connection);
	}

}
