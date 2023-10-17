package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()) {
			String check=request.getParameter("check");
		if(check==null) {
			out.println("box not checked");
			
		}
		else {
			
			String name=request.getParameter("user_name");
			String email=request.getParameter("user_email");
			String password=request.getParameter("user_password");
			String gender=request.getParameter("gender");
			String about=request.getParameter("about");
			
			User user=new User(name,email,password,gender,about);
			
			
			
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			if(dao.saveUser(user)) {
				out.println("Done.");
			}else {
				out.println("error");
			}
			
			
		}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
