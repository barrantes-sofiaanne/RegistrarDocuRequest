package com.registrar;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mindrot.jbcrypt.BCrypt;

public class LoginDAO{
	
	String sql = "SELECT Password FROM student WHERE student_id=?";
	
	public boolean isLoggedIn(String studID, String pass) {
		try(Connection conn = DBConnection.checkConnection()) {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, studID);
			
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				String hashedPass = rs.getString("password");
				if (BCrypt.checkpw(pass, hashedPass)) {
					return true;
                } 
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
