package com.tech.blog.helper;
import java.sql.*;
public class ConnectionProvider {
private static Connection con;
public static Connection getConnection() {
	 try {
		 
		 if(con==null) {
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3305/techblog","root","Mungase@0412");
		 }
		 
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return con;
}
}
