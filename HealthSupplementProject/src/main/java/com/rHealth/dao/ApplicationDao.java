package com.rHealth.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.rHealth.beans.Product;
import com.rHealth.beans.User;


public class ApplicationDao {
	public boolean ValidateUser(String username,String password,Connection connection) {
		boolean isValidUser=false;
		try {
			//get the connection from the database
			// write the query
			String query = "SELECT * FROM users WHERE username=? and password=?";
			PreparedStatement stmt = connection.prepareStatement(query);
			stmt.setString(1, username);
			stmt.setString(2, password);
			//execute the query and pass result set
			ResultSet set = stmt.executeQuery();
			while(set.next()) {
				isValidUser= true;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return isValidUser;
	}
	/**
	 * @param username
	 * @return
	 */
	public User getProfileDetails(String username, Connection connection) {
		User user = null;
		try {
			// get connection to database
			String sql ="SELECT * FROM users where username =?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, username);
			ResultSet set = stmt.executeQuery();
			while(set.next()) {
				user = new User();
				user.setUserName(set.getString("username"));
				user.setFirstName(set.getString("first_name"));
				user.setLastName(set.getString("last_name"));
				user.setActivity(set.getString("activity"));
				user.setAge(set.getInt("age"));
			}
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public List<Product> searchProducts(String searchString, Connection connection) {
		Product product = null;
		List<Product> products = new ArrayList<>();
		
		try {
			
			String sql= "Select * from products where product_name like '%"+searchString+"%'";
			Statement statement = connection.createStatement();
			ResultSet set = statement.executeQuery(sql);
			
			while (set.next()) {
				
				product = new Product();
				product.setProductId(set.getInt("product_id"));
				product.setProductImgPath(set.getString("image_path"));
				product.setProductName(set.getString("product_name"));
				products.add(product);
			}
			
		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		
		return products;
	}
	public int registerUser(User user,Connection connection) {
		int rowsAffected =0 ;
		try {
			// write sql query
			String insertQery = "insert into users values(?,?,?,?,?,?)";
			//set paramater with Prepared Statement
			PreparedStatement statement = connection.prepareStatement(insertQery);
			statement.setString(1, user.getUserName());
			statement.setString(2, user.getPassword());
			statement.setString(3,user.getFirstName());
			statement.setString(4, user.getLastName());
			statement.setInt(5, user.getAge());
			statement.setString(6,user.getActivity());
			
			//execute statemnt
			rowsAffected =statement.executeUpdate();
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return rowsAffected;
		
	}

}
