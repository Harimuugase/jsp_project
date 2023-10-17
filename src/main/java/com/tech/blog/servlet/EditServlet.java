package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;


@MultipartConfig
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()) {
			
			String userName=request.getParameter("user_name");
			String userEmail=request.getParameter("user_email");
			String userPassword=request.getParameter("user_password");
			String userAbout=request.getParameter("user_about");
			Part part=request.getPart("img");
			String imgName=part.getSubmittedFileName();
			
			//get the user from sesstion
			 HttpSession s=request.getSession();
			 User user=(User)s.getAttribute("currentUser");
			 user.setName(userName);
			 user.setEmail(userEmail);
			 user.setPassword(userPassword);
			 user.setAbout(userAbout); 
			 String oldFile=user.getProfile();
			 user.setProfile(imgName);
			 

			 
			 // Updata database
			 
			 UserDao userDao=new UserDao(ConnectionProvider.getConnection());
			  boolean ans=userDao.updateUser(user);
			  if(ans) {
				 
				  String path=request.getServletContext().getRealPath("/")+"pics"+File.separator+user.getProfile();
				  String pathold=request.getServletContext().getRealPath("/")+"pics"+File.separator+oldFile;
				  if(!oldFile.equals("default.png")) {
				  Helper.deletFile(pathold);
				  }
					if(Helper.seveFile(part.getInputStream(), path)) {
						 out.println(" Profile updated... ");
						 Message msg=new Message("Profile details updated... ", "success","alert-success");
						
							s.setAttribute("msg",msg);
					}else {
						 Message msg=new Message("Something went Wrong... ", "error","alert-danger");
							s.setAttribute("msg",msg);
					}
				 
			  }else {
				out.println("Not Updated....");
				 Message msg=new Message("Something went Wrong... ", "error","alert-danger");
					s.setAttribute("msg",msg);
			}
			  
			  response.sendRedirect("profile.jsp");
			 
			 
			
			
			
			
		}
		}
	}


