package com.registrar;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginDAO dao = new LoginDAO();
		
		String studID = request.getParameter("studentID");
		String pass = request.getParameter("password");
		
		if(dao.isLoggedIn(studID, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("studID", studID);
			response.sendRedirect("profile.jsp");
			
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			request.setAttribute("status", "fail");
			rd.forward(request, response);
		}
		
	}

}
