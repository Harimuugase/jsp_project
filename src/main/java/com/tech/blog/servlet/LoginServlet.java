package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()) {
			
			String userEmail=request.getParameter("email");
			String userPassword=request.getParameter("password");
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
			if(u==null) {
				Message msg=new Message("Invalid Details ! try whit another", "error","alert-danger");
				
				HttpSession s=request.getSession();
				s.setAttribute("msg",msg);
				response.sendRedirect("login_page.jsp");
			}else {
				HttpSession s=request.getSession();
				s.setAttribute("currentUser", u);
				response.sendRedirect("profile.jsp");
			}
			
			
			
		}
		
		
	}

}
