package com.java.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





public class Registration extends HttpServlet {
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Registration Servlet");
		try {
		System.out.println("Name "+request.getParameter("txtName"));
		System.out.println("Address "+request.getParameter("txtAddress"));
		System.out.println("Gender "+request.getParameter("rdoGender"));
		System.out.println("Email "+request.getParameter("txtEmail"));
		System.out.println("Contact "+request.getParameter("txtContact"));
		System.out.println("Username "+request.getParameter("txtUsername"));
		System.out.println("Password "+request.getParameter("passPassword"));
		
		
		
		Connection con=Dbconn.conn();
		Statement st=con.createStatement();
		
		st.executeUpdate("insert into register(Name,Address,Gender,EmailID,ContactNO,Username,Password) values('" + request.getParameter("txtName")	+ "' , '" + request.getParameter("txtAddress") + "'  , '" + request.getParameter("rdoGender") + "' , '" + request.getParameter("txtEmail")	+ "' ,'" + request.getParameter("txtContact") + "','" + request.getParameter("txtUsername") + "','" + request.getParameter("passPassword") + "' )");
		System.out.println("Register Sucessfully");
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.include(request, response); 
		
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
