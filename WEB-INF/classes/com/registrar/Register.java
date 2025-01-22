package com.registrar;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studID = request.getParameter("studentID");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String middleName = request.getParameter("middleName");
		String bday = request.getParameter("birthday");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String createPass = request.getParameter("createPass");
		String confirmPass = request.getParameter("confirmPass");
		
		
		RegistrationValidator validator = new RegistrationValidator();
		boolean isValid = true;
		
		if(!validator.isValidStudentId(studID)) {
	        request.setAttribute("studentIdError", "Please follow this pattern: 0000-00000-TG-0");
	        isValid = false;
	    }
	    if(!validator.isValidLastName(lastName)) {
	        request.setAttribute("lastNameError", "Last Name must be more than 1 character and contain no numbers.");
	        isValid = false;
	    }
	    if(!validator.isValidFirstName(firstName)) {
	        request.setAttribute("firstNameError", "First name must be more than 1 character and contain no numbers.");
	        isValid = false;
	    }
	    if(!validator.isValidPhoneNumber(contact)) {
	        request.setAttribute("phoneNumberError", "Phone number must be 11 digits and start with 09.");
	        isValid = false;
	    }
	    if(!validator.isValidEmail(email)) {
	        request.setAttribute("emailError", "Please provide a valid email address.");
	        isValid = false;
	    }
	    if(!validator.isValidPassword(createPass)) {
	        request.setAttribute("passwordError", "Password must be at least 8 characters long and contain at least 1 number.");
	        isValid = false;
	    }
	    if(!validator.isMatchedPassword(createPass, confirmPass)) {
	    	request.setAttribute("passwordNotMatch", "Password does not match.");
	        isValid = false;
	    }

	    if (!isValid) {
	        // Forward back to the registration page with error messages
	        request.getRequestDispatcher("register.jsp").forward(request, response);
	        return;
	    }
		
	    String hashedPass = BCrypt.hashpw(confirmPass, BCrypt.gensalt());
	    
	    // IF VALID, INSERT INTO DATABASE
		String sql = "INSERT INTO student (student_id, Lastname, Firstname, Middlename, Birthday, Contact_Number, Email, Password) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		
		try(Connection conn = DBConnection.checkConnection()) {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, studID);
			st.setString(2, lastName);
			st.setString(3, firstName);
			st.setString(4, middleName);
			st.setString(5, bday);
			st.setString(6, contact);
			st.setString(7, email);
			st.setString(8, hashedPass);
			
			int affectedRows = st.executeUpdate();
			// needs if statement for pop up
			
			response.sendRedirect("index.jsp");
			
            st.close();
            conn.close();
		} catch(SQLException e) {
			 e.printStackTrace();
	         response.getWriter().write("Database connection error: " + e.getMessage());
	         
		}
	}

}
