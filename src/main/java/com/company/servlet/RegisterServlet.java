package com.company.servlet;

import java.io.IOException;

import org.apache.catalina.User;

import com.company.dao.UserDao;
import com.company.dao.UserDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDaoImpl();
	
       
    
    public RegisterServlet() {
        super();
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		com.company.dao.User user = new com.company.dao.User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		if(userDao.addUser(user)) {
			response.sendRedirect("Login.jsp?registration=successfull");
		}else {
			response.sendRedirect("Register.jsp?error=1");
		}
		
	}

}
