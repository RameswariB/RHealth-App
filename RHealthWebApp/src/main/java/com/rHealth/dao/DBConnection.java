package com.rHealth.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection()
	{
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Mysql jdbc driver registered!!");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hplus","root","root");
		}catch(ClassNotFoundException e) {
			System.out.println("Where is your JDBC Driver?");
			e.printStackTrace();
		}
		catch(SQLException e) {
			System.out.println("Connection failed! check output console.");
			e.printStackTrace();
		}
		if(connection != null) {
			System.out.println("Connection made to DB!");
		}
		return connection;
		
	}
}
