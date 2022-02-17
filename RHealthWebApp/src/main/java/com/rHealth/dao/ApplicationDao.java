package com.rHealth.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ApplicationDao {
	public boolean ValidateUser(String username,String password) {
		boolean isExist = false;
		
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT username,password FROM users WHERE username =? and password=?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet set = stmt.executeQuery();
			while(set.next()) {
				isExist=true;
			}
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return isExist;
	}

}
